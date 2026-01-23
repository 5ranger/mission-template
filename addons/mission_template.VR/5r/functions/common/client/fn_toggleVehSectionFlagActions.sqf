// paths need to be stored on player GROUPS like this (TRF for possible future use):
// 		this setVariable ["x5r_grpFlag","\5r_shoulder_patches\assets\flag_1-1.jpg",true];
// 		this setVariable ["x5r_grpTRF","\5r_shoulder_patches\assets\1-1.paa",true];

_actionRaise = ["x5r_action_sectVehFlagRaise","Raise Vehicle Section Flag","",{
		vehicle player forceFlagTexture (group player getVariable "x5r_grpFlag");
	},{
		(assignedDriver vehicle player == player) &&
		(getForcedFlagTexture vehicle player == "") &&
		(!isNil { group player getVariable "x5r_grpFlag" })
	}
] call ace_interact_menu_fnc_createAction;

_actionLower = ["x5r_action_sectVehFlagLower","Lower Vehicle Flag","",{
		vehicle player forceFlagTexture ""
	},{
		(assignedDriver vehicle player == player) &&
		(getForcedFlagTexture vehicle player != "") &&
		(!isNil { group player getVariable "x5r_grpFlag" })
	}
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _actionRaise] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions"], _actionLower] call ace_interact_menu_fnc_addActionToObject;
