params ["_obj"];
for "_i" from 0 to 3 do {
    private _zOffset = -0.35 + (0.73 * _i);
    private _offset = [0, -0.2, _zOffset];

    private _pontoon = createVehicle ["rhs_pontoon_static", [0, 0, 0], [], 0, "NONE"];
    _pontoon attachTo [_obj, _offset];
};
_obj setVariable ["C5R_bridgeObj", true, true];
_obj allowDamage false;
// Handle deletion
_obj addEventHandler ["Deleted", {
	params ["_entity"];
	{
		deleteVehicle _x;
	} forEach (attachedObjects _entity);
}];