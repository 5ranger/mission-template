_action = ["x5r_action_cutBrush","Cut closest vegetation","",{
	_obj = nearestTerrainObjects [player,["Bush","Tree","Small Tree"],4,true,true] select 0;
	x5r_tags_choppingLocal = true;
	_obj spawn {
		while {x5r_tags_choppingLocal} do {
			playSound3D [getMissionPath "5r\sfx\chop.ogg",_this];
			sleep 1;
		};
	};
	[30, [_obj], {
		x5r_tags_choppingLocal = false;
		_obj = _this select 0 select 0;
		_obj setDamage [1,true,player,player];
		_obj spawn {sleep 3; _this remoteExec ["hideObjectGlobal",2] };
	}, {x5r_tags_choppingLocal = false;}, "Cutting vegetation..."] call ace_common_fnc_progressBar;
	},{
		_choptgt = nearestTerrainObjects [player, ["Bush","Tree","Small Tree"], 4, true, true] select 0;
		(
			!(isObjectHidden _chopTgt) &&
			!(isNull _chopTgt)
		)
	}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;