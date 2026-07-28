// executed on mission post-init
// The following script placed in the init field of an object will add it to the system:
/*----------------
comment "Adds this object to the reinsert request system";
if (isServer) then { 
 if (isNil "x5r_obj_reinsertRequestArray") then {x5r_obj_reinsertRequestArray = [];};
 x5r_obj_reinsertRequestArray pushBack this; 
};
-----------------*/


if hasInterface then {
	if (isNil "x5r_obj_reinsertRequestArray") exitWith {systemChat "[5R_ReinsertRequest]: WARNING: No reinsert request objects defined!";};
	{
		private _actionPing = ["x5r_actions_reinsertRequestPing", "<t size='1.1' color='#e6542a'>REQUEST REINSERT</t>", "",
		{ 
			private _list = (missionNamespace getVariable ["x5r_reinsertRequestRecievers",[]]);
			private _unit = player;
			if !(_list isEqualTo []) then {
				{
					[_unit] remoteExec ["x5r_logistics_fnc_requestReinsertMessage",_x];
				} forEach _list;

				private _names = (_list apply { name _x }) joinString "<br/>";
				hintSilent parseText format [
				    "<t size='1.4' color='#e6542a' align='center'>REINSERT REQUEST</t><br/><t align='center'>Sent to:</t><br/><t align='center'>%1</t>",
				    _names
				];
				playSoundUI ["TacticalPing", 0.7];
			} else {
				hint format ["[5R_ReinsertRequest]:\nWARNING:\nNo request recievers registered!"];
				systemChat "[5R_ReinsertRequest]: WARNING: No request recievers registered!";
			}
		},
		{true}] call ace_interact_menu_fnc_createAction;

		private _actionAdd = ["x5r_actions_reinsertRequestAddReciever", "Enable Reinsert Requests", "",
		{ 
			private _unit = player;
			[_unit] remoteExecCall ["x5r_logistics_fnc_requestReinsertAddReciever",2];
		},
		{ 
			// if player is not in reciver array
			!(player in (missionNamespace getVariable ["x5r_reinsertRequestRecievers",[]]))
		}
		] call ace_interact_menu_fnc_createAction;

		private _actionRemove = ["x5r_actions_reinsertRequestRemoveReciever", "Disable Reinsert Requests", "",
		{
			// remove player from server reciever array
			private _unit = player;
			[_unit] remoteExecCall ["x5r_logistics_fnc_requestReinsertRemoveReciever",2];
		},
		{
			// if player is reciever array
			player in (missionNamespace getVariable ["x5r_reinsertRequestRecievers",[]])
		}] call ace_interact_menu_fnc_createAction;
		
		[_x, 0, ["ACE_MainActions"], _actionPing] call ace_interact_menu_fnc_addActionToObject;
		[_x, 0, ["ACE_MainActions", "x5r_actions_reinsertRequestPing"], _actionAdd] call ace_interact_menu_fnc_addActionToObject;
		[_x, 0, ["ACE_MainActions", "x5r_actions_reinsertRequestPing"], _actionRemove] call ace_interact_menu_fnc_addActionToObject;
	} forEach x5r_obj_reinsertRequestArray;
};