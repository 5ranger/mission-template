// Add access to spectator and gcam from the map screen and while uncon for players in passed array of steamID64
params ["_spectWhitelist"];
diag_log format ["Loaded spectator whitelist: %1", _spectWhitelist];
private _uid = getPlayerUID player;
if !(_uid in _spectWhitelist) exitWith {};

// Should only run once, but soft-set just in case
if (isNil "x5r_tags_camMode") then { x5r_tags_camMode = ""; }; // "" | "spectator" | "gcam"
if (isNil "x5r_tags_unconActive") then { x5r_tags_unconActive = false; };

// Register "feature camera" whenever x5r_tags_camMode is set, so ACE suppresses the unconscious blackout effect while we're in gcam.
if (isNil "x5r_tags_featureCamRegistered") then {
    x5r_tags_featureCamRegistered = true;
    ["x5r_camera", {x5r_tags_camMode != ""}] call CBA_fnc_registerFeatureCamera;
};
// ---- Open/close functions with watchers for exit cases ----
x5r_fnc_openSpectator = {
    if (x5r_tags_camMode != "") exitWith {};
    x5r_tags_camMode = "spectator";
    if (player getVariable ["ACE_isUnconscious", false]) then {
        [false] call ace_common_fnc_disableUserInput;
    };
    ["Initialize", [player, [], false, true, false, false, false, true, false, false]] call BIS_fnc_EGSpectator;
    // wait for escape menu or camMode to switch
    [] spawn {
        waitUntil {sleep 0.1; !isNull findDisplay 49 || {x5r_tags_camMode != "spectator"}};
        if (!isNull findDisplay 49) then {
            call x5r_fnc_closeSpectator;
        };
    };
};

x5r_fnc_closeSpectator = {
    x5r_tags_camMode = ""; // watcher's waitUntil sees this and skips its own Terminate
    ["Terminate"] call BIS_fnc_EGSpectator;
    if (player getVariable ["ACE_isUnconscious", false]) then {
        [true] call ace_common_fnc_disableUserInput;
    };
};

x5r_fnc_openGcam = {
    if (x5r_tags_camMode != "") exitWith {};
    x5r_tags_camMode = "gcam";
    if (player getVariable ["ACE_isUnconscious", false]) then {
        [false] call ace_common_fnc_disableUserInput;
    };
    showChat false;
    private _handle = execVM "gcam\gcam.sqf";
    // wait for exit
    [_handle] spawn {
        params ["_handle"];
        waitUntil {sleep 0.5; scriptDone _handle};
        x5r_tags_camMode = "";
        showChat true;
        if (player getVariable ["ACE_isUnconscious", false]) then {
            [true] call ace_common_fnc_disableUserInput;
        };
    };
};

// Hack to get gcam to exit. The spawned watcher in x5r_fnc_openGcam handles all cleanup via scriptDone.
x5r_fnc_closeGcam = {
    GCamKill = true;
    [] spawn {sleep 1; GCamKill = false;}; // Cleanup the flag since we manipulate it outside the normal gcam sqf
};

// Handle respawns while in camera
player addEventHandler ["Killed", {
    x5r_tags_camMode = "";
    showChat true;
}];

// Close cameras when you wake up since you might not notice that you did
["ace_medical_wakeUp", {
    params ["_unit"];
    if (_unit != player) exitWith {};
    x5r_tags_unconActive = false;
    switch (x5r_tags_camMode) do {
        case "spectator": { call x5r_fnc_closeSpectator; };
        case "gcam": { call x5r_fnc_closeGcam; };
    };
}] call CBA_fnc_addEventHandler;

// ---- Uncon buttons ----
// Add buttons while uncon. Re-attached every time ACE's input-block dialog (re)appears
["ace_medical_knockOut", {
    params ["_unit"];
    if (_unit != player) exitWith {};
    if (x5r_tags_camMode != "") then {[false] call ace_common_fnc_disableUserInput;};
    x5r_tags_unconActive = true;
    // Create buttons while Uncon: re-attached every time ACE's input-block dialog (re)appears
    [] spawn {
        while {x5r_tags_unconActive} do {
            waitUntil {sleep 0.2; !x5r_tags_unconActive || {!isNull (uiNamespace getVariable ["ace_common_dlgDisableMouse", displayNull])}};
            if (!x5r_tags_unconActive) exitWith {};
            disableSerialization;
            private _dlg = uiNamespace getVariable ["ace_common_dlgDisableMouse", displayNull];

            // Restore the normal cursor ACE hides on this dialog
            (_dlg displayCtrl 101) ctrlMapCursor ["", "Arrow"];

            private _ctrl1 = _dlg ctrlCreate ["x5r_iconButton", -1];
            _ctrl1 ctrlSetPosition [safeZoneX + 0.51 * safeZoneW, safeZoneY];
            _ctrl1 ctrlSetText "\A3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\FreeSelected.paa";
            _ctrl1 ctrlAddEventHandler ["MouseButtonClick", { call x5r_fnc_openSpectator; }];
            _ctrl1 ctrlCommit 0;

            private _ctrl2 = _dlg ctrlCreate ["x5r_iconButton", -1];
            _ctrl2 ctrlSetPosition [safeZoneX + 0.49 * safeZoneW, safeZoneY];
            _ctrl2 ctrlSetText "\a3\modules_f_curator\data\portraitcuratorsetcamera_ca.paa";
            _ctrl2 ctrlAddEventHandler ["MouseButtonClick", { call x5r_fnc_openGcam; }];
            _ctrl2 ctrlCommit 0;

            waitUntil {sleep 0.2; !x5r_tags_unconActive || isNull (uiNamespace getVariable ["ace_common_dlgDisableMouse", displayNull])};
        };
    };
}] call CBA_fnc_addEventHandler;

// ---- Map buttons ----
with uiNamespace do {
    waitUntil {!isNull findDisplay 12};
    disableSerialization;
    _ctrl1 = findDisplay 12 ctrlCreate ["x5r_iconButton", -1];
    _ctrl1 ctrlSetPosition [safeZoneX + 0.51 * safeZoneW, safeZoneY];
    _ctrl1 ctrlSetText "\A3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\FreeSelected.paa";
    _ctrl1 ctrlAddEventHandler ["MouseButtonClick", {
        call x5r_fnc_openSpectator;
    }];
    _ctrl1 ctrlCommit 0;
};
with uiNamespace do {
    waitUntil {!isNull findDisplay 12};
    disableSerialization;
    _ctrl2 = findDisplay 12 ctrlCreate ["x5r_iconButton", -1];
    _ctrl2 ctrlSetPosition [safeZoneX + 0.49 * safeZoneW, safeZoneY];
    _ctrl2 ctrlSetText "\a3\modules_f_curator\data\portraitcuratorsetcamera_ca.paa";
    _ctrl2 ctrlAddEventHandler ["MouseButtonClick", {
        call x5r_fnc_openGcam;
    }];
    _ctrl2 ctrlCommit 0;
};

diag_log format ["Spectate buttons created for %1", player];