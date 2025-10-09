params ["_obj"];

if ((vehicleVarName player in ["p41ic","p412ic","p41sapper_1","p41sapper_2","p41sapper_3"]) || x5r_config_vehicleRespawnEnabled) then {
	_actionAdd = ["x5r_actions_respawnAdd", "Create Respawn Position", "",
	{ 
		[_target] remoteExec ["x5r_common_fnc_addRespawn", 2]; 
	},
	{ 
		isNil { 
			(_target getVariable "x5r_tags_respawnId")
		}
	}
	] call ace_interact_menu_fnc_createAction;

	_actionRemove = ["x5r_actions_respawnRemove", "Remove Respawn Position", "",
	{
		[_target] remoteExec ["x5r_common_fnc_removeRespawn", 2];
	},
	{
		!isNil {(_target getVariable "x5r_tags_respawnId")}
	}] call ace_interact_menu_fnc_createAction;

	[_obj, 0, ["ACE_MainActions"], _actionAdd] call ace_interact_menu_fnc_addActionToObject;
	[_obj, 0, ["ACE_MainActions"], _actionRemove] call ace_interact_menu_fnc_addActionToObject;
};
