_action = ["x5r_action_cutBrush","Cut closest vegetation","",{
	private _matches = [];
	private _bush = nearestTerrainObjects [player,["Bush"],4,true,true] select 0;
	if (!isNil "_bush" && !isObjectHidden _bush) then {
		_matches pushback [_bush, 8,"bush"];
	};
	private _tree = nearestTerrainObjects [player,["Small Tree","Tree"],4,true,true] select 0;
	if (!isNil "_tree" && !isObjectHidden _tree) then {
		_matches pushback [_tree, 25,"tree"];
	};
	
	_matches = [_matches, [], { player distance2D (_x select 0) }] call BIS_fnc_sortBy;
	private _obj = _matches select 0;

	x5r_tags_choppingLocal = true;
	_obj select 0 spawn {
		while {x5r_tags_choppingLocal} do {
			playSound3D [getMissionPath "5r\sfx\chop.ogg",_this];
			sleep 1;
		};
	};
	[_obj select 1, [_obj select 0], {
		x5r_tags_choppingLocal = false;
		_obj = _this select 0 select 0;
		_obj setDamage [1,true,player,player];
		_obj spawn {sleep 1.5; _this remoteExec ["hideObjectGlobal",2] };
	}, {x5r_tags_choppingLocal = false;}, format ["Cutting %1...",_obj select 2]] call ace_common_fnc_progressBar;
	},{
		_choptgt = nearestTerrainObjects [player, ["Bush","Tree","Small Tree"], 4, true, true] select 0;
		(
			!(isObjectHidden _chopTgt) &&
			!(isNull _chopTgt) &&
			(isNull objectParent player)
		)
	}
] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
