// Creates a forceRespawn ACE interaction on a object. Normally called through init_arsenals.sqf on arsenal objects.
// USAGE:
// Local: [_this] call x5r_common_fnc_addForceRespawnActions;
// Global: [_this] remoteExec ["x5r_common_fnc_addForceRespawnActions", [0, -2] select isDedicated, _this];

params [["_obj", objNull, [objNull]]];

if (!hasInterface || {isNull _obj}) exitWith {diag_log "Skipped adding forceRespawn: no interface or objNull";};

private _respawn = [
    "x5r_forceRespawn",
    "Respawn",
    "",
    { hint "Select Force Respawn to confirm" },
    { true }
] call ace_interact_menu_fnc_createAction;

private _force = [
    "x5r_forceRespawnChild",
    "Force Respawn",
    "",
    { forceRespawn player },
    { true }
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _respawn] call ace_interact_menu_fnc_addActionToObject;
[_obj, 0, ["ACE_MainActions", "x5r_forceRespawn"], _force] call ace_interact_menu_fnc_addActionToObject;