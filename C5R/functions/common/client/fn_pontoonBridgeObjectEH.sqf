params ["_pontoonObjects"];

["acex_fortify_objectPlaced", {
	params ["_player","_side","_obj"];
	if ((typeOf _obj) in _thisArgs) then {
		systemChat format ["C5R_BRIDGE: %1", _obj];
		private _nearby = nearestObjects [_obj, ["B_Slingload_01_Cargo_F"], 20];
        private _matches = _nearby select { _x getVariable ["C5R_bridgeObj", false] };
		if ((count _matches) > 0) then {
			[_obj] call C5R_Common_fnc_pontoonBridgeAttachActions;
			deleteVehicle _matches select 0;
		} else {
			hint "You need a Bridge Pack to place this";
			systemChat format ["C5R_BRIDGE_objectPlaced: %1", _obj];
			deleteVehicle _obj;
		};
	}
},_pontoonObjects] call CBA_fnc_addEventHandlerArgs;

["acex_fortify_objectDeleted", {
	params ["_player","_side","_obj"];
	_crate = createVehicle ["B_Slingload_01_Cargo_F", getPos _obj, [], 0, "NONE"];
	[_crate] call C5R_Common_fnc_pontoonBridgeCreateObject; 
},_pontoonObjects] call CBA_fnc_addEventHandlerArgs;