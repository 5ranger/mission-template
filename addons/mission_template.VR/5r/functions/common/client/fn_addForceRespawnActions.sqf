params [["_obj", objNull, [objNull]]];

if (!hasInterface || {isNull _obj}) exitWith {};

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