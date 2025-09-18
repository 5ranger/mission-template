_pontoonObject = "rhs_pontoon_end_static";
["acex_fortify_objectPlaced", {
	params ["_player","_side","_obj"];
	if (((typeOf _obj) in _thisArgs) && (_player == player)) then {
		// Check for reqisite item 
		private _nearby = nearestObjects [_obj, ["B_Slingload_01_Cargo_F"], 20];
        private _matches = _nearby select { _x getVariable ["C5R_bridgeObj", false] };
		if ((count _matches) > 0) then {
			// Consume requisite item if found and create subpiece array variable
			[_obj,_obj] call C5R_Common_fnc_pontoonBridgeAttachActions;
			deleteVehicle _matches select 0;
			_obj enableSimulationGlobal false;
			_obj allowDamage false;
			[_obj, true] call zen_building_markers_fnc_set;
			private _C5R_bridgeChildren = [];
			_obj setVariable ["C5R_bridgeChildren",_C5R_bridgeChildren,true];
		} else {
			// or remove placed object if not found
			hint "You need a Bridge Pack to place this";
			deleteVehicle _obj;
		};
	}
},_pontoonObject] call CBA_fnc_addEventHandlerArgs;
// When removed, recreate requisite item and remove all subpieces 
["acex_fortify_objectDeleted", {
	params ["_player","_side","_obj"];
	if (((typeOf _obj) in _thisArgs) && (_player == player)) then {
		_crate = createVehicle ["B_Slingload_01_Cargo_F", (_player getRelPos [8,180]), [], 0, "NONE"];
		[_crate] call C5R_Common_fnc_pontoonBridgeCreateObject; 
		{deleteVehicle _x;} forEach (_obj getVariable "C5R_bridgeChildren");
	}
},_pontoonObject] call CBA_fnc_addEventHandlerArgs;