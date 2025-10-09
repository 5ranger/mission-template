params ["_class","_pos"];

_box = createVehicle [_class, _pos, [], 0, "CAN_COLLIDE"];
if (typeOf _box == "FlexibleTank_01_forest_F") then {
	[_box, 0] call ace_refuel_fnc_setFuel;
} else 
{
	clearWeaponCargoGlobal _box;   
	clearMagazineCargoGlobal _box;   
	clearItemCargoGlobal _box;
	clearBackpackCargoGlobal _box; 
};
