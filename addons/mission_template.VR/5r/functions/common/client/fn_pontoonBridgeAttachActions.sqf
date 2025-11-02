// Requires ACE and ZEN
params ["_obj","_parentObj"];
 //  Create action for adding middle piece
_actionAdd = ["x5r_pontoonAdd","Add a pontoon section","",{
	params ["_target", "_caller", "_actionParams"];
	private _parentObj = _actionParams select 0;
	[5, [_target,_parentObj], {
		private _target = _this select 0 select 0; 
		private _parentObj = _this select 0 select 1; 
		//Create and attach piece
		private _piece = createVehicle ["rhs_pontoon_static", [0,0,0], [], 0, "NONE"];
		_piece enableSimulationGlobal false;
		_piece allowDamage false;
		// Tweak attach point depending on _target object
		if  (typeOf _target == "rhs_pontoon_static") then {
			_piece attachTo [_target, [0,-6.75,0]];
		} else {
			_piece attachTo [_target, [-0.055,-6.89,0]];
		};
		detach _piece;
		[_piece, true] call zen_building_markers_fnc_set;
		// Create the actions on the new piece
		[_piece,_parentObj] call x5r_Common_fnc_pontoonBridgeAttachActions;
		// Save object to parent array for later removal
		private _bridgeChildren = _parentObj getVariable "x5r_bridgeChildren";
		_bridgeChildren pushBack _piece; 
		_parentObj setVariable ["x5r_bridgeChildren",_bridgeChildren,true]; 
		// Clean up ACE actions when placed and prevent more pieces to be added to the same location
		{[_target, 0, _x] call ace_interact_menu_fnc_removeActionFromObject;} forEach (_target getVariable "x5r_pontoonActions");
	}, {}, "Placing pontoon section..."] call ace_common_fnc_progressBar;
},{true},{},[_parentObj]] call ace_interact_menu_fnc_createAction;

// Create action for adding end piece and finish building
_actionEnd = ["x5r_pontoonEnd","Place endpiece and finish bridge","",{
	params ["_target", "_caller", "_actionParams"];
	private _parentObj = _actionParams select 0;
	[5, [_target,_parentObj], {
		private _target = _this select 0 select 0; 
		private _parentObj = _this select 0 select 1; 
		//Create and move piece into place
		private _piece = createVehicle ["rhs_pontoon_end_static", [0,0,0], [], 0, "NONE"];
		_piece enableSimulationGlobal false;
		_piece allowDamage false;
		_piece attachTo [_target, [0,-6.87,0]];
		detach _piece;
		_piece setVectorDirAndUp [vectorDir _target vectorMultiply -1,vectorUp _target]; // Rotate 180 degrees to fit
		[_piece, true] call zen_building_markers_fnc_set;
		// Save object to parent array for later removal
		private _bridgeChildren = _parentObj getVariable "x5r_bridgeChildren";
		_bridgeChildren pushBack _piece; 
		_parentObj setVariable ["x5r_bridgeChildren",_bridgeChildren,true]; 
		// Clean up ACE actions when placed and prevent more pieces to be added to the same location
		{[_target, 0, _x] call ace_interact_menu_fnc_removeActionFromObject;} forEach (_target getVariable "x5r_pontoonActions");
	}, {}, "Placing endpiece and finish bridge..."] call ace_common_fnc_progressBar;
},{true},{},[_parentObj]] call ace_interact_menu_fnc_createAction;

// Attach actions to object
private _actionAddID = [_obj, 0, ["ACE_MainActions"], _actionAdd] call ace_interact_menu_fnc_addActionToObject;
private _actionEndID = [_obj, 0, ["ACE_MainActions","x5r_pontoonAdd"], _actionEnd] call ace_interact_menu_fnc_addActionToObject;

// Save the actions for removal
private _x5r_pontoonActions = [_actionAddID,_actionEndID];
_obj setVariable ["x5r_pontoonActions",_x5r_pontoonActions,true];