params ["_unit"];
if !(isServer) exitWith {};
private _list = (missionNamespace getVariable ["x5r_reinsertRequestRecievers",[]]);
_list pushBackUnique _unit;
missionNamespace setVariable ["x5r_reinsertRequestRecievers",_list, true];
["Enabled"] remoteExec ["x5r_logistics_fnc_requestReinsertStatusHint", _unit];
diag_log format ["[5R_ReinsertRequest]: %1, %2 added to recievers list",name _unit,vehicleVarName _unit];