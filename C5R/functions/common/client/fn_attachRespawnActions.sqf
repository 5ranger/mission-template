params ["_obj"];
if ((vehicleVarName player in ["p41ic","p412ic","p41sapper_1","p41sapper_2","p41sapper_3"]) || C5R_unlockVehRespawnToggle) then {
	_actionAdd = ["C5R_addRespawn","Create Respawn Position","",{
		[_target] remoteExec ["C5R_Common_fnc_respawnAdd",2];
	},{isNil{ (_target getVariable "C5R_respawnID")}}] call ace_interact_menu_fnc_createAction;
	_actionRemove = ["C5R_removeRespawn","Remove Respawn Position","",{
		[_target] remoteExec ["C5R_Common_fnc_respawnRemove",2];
	},{!isNil {(_target getVariable "C5R_respawnID")}}] call ace_interact_menu_fnc_createAction;

	[_obj, 0, ["ACE_MainActions"], _actionAdd] call ace_interact_menu_fnc_addActionToObject;
	[_obj, 0, ["ACE_MainActions"], _actionRemove] call ace_interact_menu_fnc_addActionToObject;
};