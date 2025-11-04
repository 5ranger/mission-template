params ["_obj"];
// Set some object attributes
clearWeaponCargoGlobal _obj;
clearMagazineCargoGlobal _obj;
clearItemCargoGlobal _obj;
clearBackpackCargoGlobal _obj;
[_obj,0] remoteExec ["setMaxLoad",2];
[_obj, 0] call ace_cargo_fnc_setSpace;   
[_obj, -1] call ace_cargo_fnc_setSize;
_obj allowDamage false;
// Some tricks to get rid of the Climb Aboard script from attached cosmetic pontoons
_objPos = getPos _obj;
_obj setPos [0,0,0];
// Attach cosmetic pontoons
for "_i" from 0 to 3 do {
    private _zOffset = -0.35 + (0.73 * _i);
    private _offset = [0, -0.2, _zOffset];
    private _pontoon = createVehicle ["rhs_pontoon_static", [0, 0, 0], [], 0, "NONE"];
    _pontoon enableSimulationGlobal false;
    _pontoon setDamage 1; // Also tricks
    _pontoon attachTo [_obj, _offset];
};
// Set variable for identification
_obj setVariable ["x5r_bridgeObj", true, true];
// Handle deletion
_obj addEventHandler ["Deleted", {
	params ["_entity"];
	{
		deleteVehicle _x;
	} forEach (attachedObjects _entity);
}];
// More tricks
[_obj,_objPos] spawn {
    params ["_obj","_objPos"];
    sleep 5;
    _obj setPos _objPos;
};
