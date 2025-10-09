params ["_respawnObjects"];

["acex_fortify_objectPlaced", {
	params ["_player","_side","_obj"];
	if ((typeOf _obj) in _thisArgs) 
	then {
		[_obj] remoteExec ["x5r_common_fnc_respawnAdd",2];
		_obj animate ["door1_hide", 1, false]; 
		_obj animate ["door2_hide", 1, false]; 
	}
},_respawnObjects] call CBA_fnc_addEventHandlerArgs;
// "acex_fortify_objectDeleted"-EH is not needed since removing the object automatically removes respawn position
