
/*
    Refactored: Adds ACE interact actions for creating empty vehicle crates.
    Uses a helper function to reduce repetition and improve maintainability.
*/

params ["_vehicles"];

// Helper to add an action to all vehicles
private _addActionToVehicles = {
    params ["_action", "_path"];
    {
        [_x, 0, _path, _action] call ace_interact_menu_fnc_addActionToClass;
    } forEach _vehicles;
};

// Create actions
private _actionMain = ["x5r_action_emptyBoxCreate", "Grab empty crate", "", { hint "Select a unload side and size to grab" }, { true }] call ace_interact_menu_fnc_createAction;
private _actionL = ["x5r_action_emptyBoxCreate_Left", "Left side", "", { hint "Select a size to grab" }, { true }] call ace_interact_menu_fnc_createAction;
private _actionR = ["x5r_action_emptyBoxCreate_Right", "Right side", "", { hint "Select a size to grab" }, { true }] call ace_interact_menu_fnc_createAction;

private _actionLargeL = ["x5r_action_emptyBoxCreate_Large_Left", "Large", "", { ["B_CargoNet_01_ammo_F", (_target getRelPos [3, 270])] call x5r_logistics_fnc_createEmptyVehicle }, { true }] call ace_interact_menu_fnc_createAction;
private _actionMediumL = ["x5r_action_emptyBoxCreate_Medium_Left", "Medium", "", { ["Box_NATO_Wps_F", (_target getRelPos [3, 270])] call x5r_logistics_fnc_createEmptyVehicle }, { true }] call ace_interact_menu_fnc_createAction;
private _actionSmallL = ["x5r_action_emptyBoxCreate_Small_Left", "Small", "", { ["Box_NATO_Ammo_F", (_target getRelPos [3, 270])] call x5r_logistics_fnc_createEmptyVehicle }, { true }] call ace_interact_menu_fnc_createAction;
private _actionFuelL = ["x5r_action_emptyBoxCreate_Fuel_Left", "Fuel Bladder", "", { ["FlexibleTank_01_forest_F", (_target getRelPos [3, 270])] call x5r_logistics_fnc_createEmptyVehicle }, { true }] call ace_interact_menu_fnc_createAction;

private _actionLargeR = ["x5r_action_emptyBoxCreate_Large_Right", "Large", "", { ["B_CargoNet_01_ammo_F", (_target getRelPos [3, 90])] call x5r_logistics_fnc_createEmptyVehicle }, { true }] call ace_interact_menu_fnc_createAction;
private _actionMediumR = ["x5r_action_emptyBoxCreate_Medium_Right", "Medium", "", { ["Box_NATO_Wps_F", (_target getRelPos [3, 90])] call x5r_logistics_fnc_createEmptyVehicle }, { true }] call ace_interact_menu_fnc_createAction;
private _actionSmallR = ["x5r_action_emptyBoxCreate_Small_Right", "Small", "", { ["Box_NATO_Ammo_F", (_target getRelPos [3, 90])] call x5r_logistics_fnc_createEmptyVehicle }, { true }] call ace_interact_menu_fnc_createAction;
private _actionFuelR = ["x5r_action_emptyBoxCreate_Fuel_Right", "Fuel Bladder", "", { ["FlexibleTank_01_forest_F", (_target getRelPos [3, 90])] call x5r_logistics_fnc_createEmptyVehicle }, { true }] call ace_interact_menu_fnc_createAction;

// Add actions to all vehicles using the helper
[_actionMain, ["ACE_MainActions"]] call _addActionToVehicles;
[_actionL, ["ACE_MainActions", "x5r_action_emptyBoxCreate"]] call _addActionToVehicles;
[_actionR, ["ACE_MainActions", "x5r_action_emptyBoxCreate"]] call _addActionToVehicles;

[_actionLargeL, ["ACE_MainActions", "x5r_action_emptyBoxCreate", "x5r_action_emptyBoxCreate_Left"]] call _addActionToVehicles;
[_actionMediumL, ["ACE_MainActions", "x5r_action_emptyBoxCreate", "x5r_action_emptyBoxCreate_Left"]] call _addActionToVehicles;
[_actionSmallL, ["ACE_MainActions", "x5r_action_emptyBoxCreate", "x5r_action_emptyBoxCreate_Left"]] call _addActionToVehicles;
[_actionFuelL, ["ACE_MainActions", "x5r_action_emptyBoxCreate", "x5r_action_emptyBoxCreate_Left"]] call _addActionToVehicles;

[_actionLargeR, ["ACE_MainActions", "x5r_action_emptyBoxCreate", "x5r_action_emptyBoxCreate_Right"]] call _addActionToVehicles;
[_actionMediumR, ["ACE_MainActions", "x5r_action_emptyBoxCreate", "x5r_action_emptyBoxCreate_Right"]] call _addActionToVehicles;
[_actionSmallR, ["ACE_MainActions", "x5r_action_emptyBoxCreate", "x5r_action_emptyBoxCreate_Right"]] call _addActionToVehicles;
[_actionFuelR, ["ACE_MainActions", "x5r_action_emptyBoxCreate", "x5r_action_emptyBoxCreate_Right"]] call _addActionToVehicles;
