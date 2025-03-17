params ["_obj"];

if (vehicleVarName player in ["p41ic","p412ic","p41sapper_1","p41sapper_2","p41sapper_3"]) then {
	_actionAdd = ["5r_addRespawn", "Create Respawn Position", "", {
		[_target] remoteExec ["5r_common_fnc_respawnAdd", 2];
	},{isNil{ (_target getVariable "5r_respawnID")}}] call ace_interact_menu_fnc_createAction;

	_actionRemove = ["5r_removeRespawn", "Remove Respawn Position", "", {
		[_target] remoteExec ["5r_common_fnc_respawnRemove", 2];
	},{!isNil {(_target getVariable "5r_respawnID")}}] call ace_interact_menu_fnc_createAction;

	[_obj, 0, ["ACE_MainActions"], _actionAdd] call ace_interact_menu_fnc_addActionToObject;
	[_obj, 0, ["ACE_MainActions"], _actionRemove] call ace_interact_menu_fnc_addActionToObject;
};