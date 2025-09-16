params ["_obj"];
systemChat format ["C5R_BRIDGE_AttachActions: %1", _obj];
_actionAdd = ["C5R_pontoonAdd","Add a pontoon section","",{
	_piece = createVehicle ["rhs_pontoon_static", [0,0,0], [], 0, "FLY"];
	_piece attachTo [_target, [0,-6.89,0]];

systemChat format ["C5R_BRIDGE_AttachActions _OBJ: %1 | _TARGET: %2" , _obj, _target];

	detach _piece;
	[_piece] call C5R_Common_fnc_pontoonBridgeAttachActions;
	[_target, 0, ["ACE_MainActions", "C5R_pontoonAdd"]] call ace_interact_menu_fnc_removeAction;
},{true}] call ace_interact_menu_fnc_createAction;
_actionEnd = ["C5R_pontoonEnd","Place end piece and finish bridge","",{
	_piece = createVehicle ["rhs_pontoon_end_static", [0,0,0], [], 0, "FLY"];
	_piece attachTo [_target, [-0.022,-6.87,0]];
	detach _piece;
	_piece setVectorDirAndUp [vectorDir _target vectorMultiply -1,vectorUp _target];
	[_target, 0, ["ACE_MainActions", _actionAdd]] call ace_interact_menu_fnc_removeAction;
},{true}] call ace_interact_menu_fnc_createAction;
[_obj, 0, ["ACE_MainActions"], _actionAdd] call ace_interact_menu_fnc_addActionToObject;
[_obj, 0, ["ACE_MainActions","C5R_pontoonAdd"], _actionEnd] call ace_interact_menu_fnc_addActionToObject;