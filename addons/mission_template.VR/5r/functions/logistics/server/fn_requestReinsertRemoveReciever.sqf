params ["_unit"];
if !(isServer) exitWith {};
private _list = missionNamespace getVariable ["x5r_reinsertRequestRecievers", []];
_list = _list - [_unit];
missionNamespace setVariable ["x5r_reinsertRequestRecievers", _list, true];
["Disabled"] remoteExec ["x5r_logistics_fnc_requestReinsertStatusHint", _unit];
diag_log format ["[5R_ReinsertRequest]: %1, %2 removed from receivers list", name _unit, vehicleVarName _unit];