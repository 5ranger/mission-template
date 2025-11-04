private _items = getItemCargo baseLoadoutItems select 0;
_items append (getMagazineCargo baseLoadoutItems select 0);

private _quantities = getItemCargo baseLoadoutItems select 1;
_quantities append (getMagazineCargo baseLoadoutItems select 1);

private _totalFailCount = 0;
{
    private _unit = _x;
    private _failCount = 0;

    {
        private _item = _x;
        private _qty = _quantities select _forEachIndex;

        for "_i" from 1 to _qty do {
            private _result = [_unit, _item, true] call CBA_fnc_addItem;
            if (!_result) then {
                _failCount = _failCount + 1;
            };
        };
    } forEach _items;

    if (_failCount != 0) then {
        private _msg = format ["[%1] Failed to add %2 item(s)", vehicleVarName _unit, _failCount];
        systemChat _msg;
    };
    _totalFailCount = _totalFailCount + _failCount;
} forEach units loadoutGroup;
if (_totalFailCount == 0) then {
    systemChat "Added items to all loadouts successfully!";
};
