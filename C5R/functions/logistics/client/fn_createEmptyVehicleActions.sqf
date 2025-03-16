params ["_vehicles"];
_actionMain = ["C5R_createEmptyBoxMain","Grab empty crate","",{hint "Select a unload side and size to grab"},{true}] call ace_interact_menu_fnc_createAction;
_actionL = ["C5R_createEmptyBoxLeft","Left side","",{hint "Select a size to grab"},{true}] call ace_interact_menu_fnc_createAction;
_actionR = ["C5R_createEmptyBoxRight","Right side","",{hint "Select a size to grab"},{true}] call ace_interact_menu_fnc_createAction;
_actionLargeL = ["C5R_createEmptyBoxLargeL","Large","",{["B_CargoNet_01_ammo_F", (_target getRelPos [3, 270])]call C5R_Logistics_fnc_createEmptyVehicle},{true}] call ace_interact_menu_fnc_createAction;
_actionMediumL = ["C5R_createEmptyBoxMediumL","Medium","",{["Box_NATO_Wps_F", (_target getRelPos [3, 270])]call C5R_Logistics_fnc_createEmptyVehicle},{true}] call ace_interact_menu_fnc_createAction;
_actionSmallL = ["C5R_createEmptyBoxSmallL","Small","",{["Box_NATO_Ammo_F", (_target getRelPos [3, 270])]call C5R_Logistics_fnc_createEmptyVehicle},{true}] call ace_interact_menu_fnc_createAction;
_actionFuelL = ["C5R_createEmptyBoxFuelL","Fuel Bladder","",{["FlexibleTank_01_forest_F", (_target getRelPos [3, 270])]call C5R_Logistics_fnc_createEmptyVehicle},{true}] call ace_interact_menu_fnc_createAction;
_actionLargeR = ["C5R_createEmptyBoxLargeR","Large","",{["B_CargoNet_01_ammo_F", (_target getRelPos [3, 90])]call C5R_Logistics_fnc_createEmptyVehicle},{true}] call ace_interact_menu_fnc_createAction;
_actionMediumR = ["C5R_createEmptyBoxMediumR","Medium","",{["Box_NATO_Wps_F", (_target getRelPos [3, 90])]call C5R_Logistics_fnc_createEmptyVehicle},{true}] call ace_interact_menu_fnc_createAction;
_actionSmallR = ["C5R_createEmptyBoxSmallR","Small","",{["Box_NATO_Ammo_F", (_target getRelPos [3, 90])]call C5R_Logistics_fnc_createEmptyVehicle},{true}] call ace_interact_menu_fnc_createAction;
_actionFuelR = ["C5R_createEmptyBoxFuelR","Fuel Bladder","",{["FlexibleTank_01_forest_F", (_target getRelPos [3, 90])]call C5R_Logistics_fnc_createEmptyVehicle},{true}] call ace_interact_menu_fnc_createAction;
{
	[_x, 0, ["ACE_MainActions"], _actionMain] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain"], _actionL] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain"], _actionR] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain","C5R_createEmptyBoxLeft"], _actionLargeL] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain","C5R_createEmptyBoxLeft"], _actionMediumL] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain","C5R_createEmptyBoxLeft"], _actionSmallL] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain","C5R_createEmptyBoxLeft"], _actionFuelL] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain","C5R_createEmptyBoxRight"], _actionLargeR] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain","C5R_createEmptyBoxRight"], _actionMediumR] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain","C5R_createEmptyBoxRight"], _actionSmallR] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;
{
	[_x, 0, ["ACE_MainActions","C5R_createEmptyBoxMain","C5R_createEmptyBoxRight"], _actionFuelR] call ace_interact_menu_fnc_addActionToClass;
} forEach _vehicles;