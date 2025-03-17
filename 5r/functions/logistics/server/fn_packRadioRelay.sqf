params ["_target"];
// Delete attached objects
{
	detach _x,
	deleteVehicle _x;
}
forEach attachedObjects _target;
[_target] remoteExec ["TFAR_antennas_fnc_deleteRadioTower",[0,-2] select isDedicated];
deleteMarker ("C5R_radioRelay_" + (str (_target getVariable "C5R_relayID"))); 
_target enableSimulationGlobal true;
_target setVariable ["C5R_relayActive",false,true];
_target removeEventHandler ["Killed", _target getVariable "C5R_relayKilledEHID"]; // Remove "killed"-EH
_target setVariable ["C5R_disableViVLoading",false,true];