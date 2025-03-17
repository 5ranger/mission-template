_action = ["5r_cutterAction","Cut closest vegetation","",{
	_obj = nearestTerrainObjects [player,["Bush","Tree","Small Tree"],4,true,true] select 0;
	5r_isChoppingLocal = true;
	_obj spawn {
		while {5r_isChoppingLocal} do {
			playSound3D [getMissionPath "sfx\chop.ogg",_this];
			sleep 1;
		};
	};
	[30, [_obj], {
		5r_isChoppingLocal = false;
		_obj = _this select 0 select 0;
		_obj setdamage [1,true,player,player];
		_obj spawn { sleep 3; hideObjectGlobal _this};
	}, {5r_isChoppingLocal = false;}, "Cutting vegetation..."] call ace_common_fnc_progressBar;
	},{
		_choptgt = nearestTerrainObjects [player, ["Bush","Tree","Small Tree"], 4, true, true] select 0;
		(
			!(isObjectHidden _chopTgt) &&
			!(isNull _chopTgt)
		)
	}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;