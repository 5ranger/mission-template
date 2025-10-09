params ["_target"];
// Delete attached objects
{
	detach _x;
	deleteVehicle _x;
}
forEach attachedObjects _target;
[_target] remoteExec ["TFAR_antennas_fnc_deleteRadioTower",[0,-2] select isDedicated];
deleteMarker ("x5r_tags_radioRelay_" + (str (_target getVariable "x5r_tags_relayId"))); 
_target enableSimulationGlobal true;
_target setVariable ["x5r_tags_relayActive",false,true];
_target removeEventHandler ["Killed", _target getVariable "x5r_tags_relayKilledEHID"]; // Remove "killed"-EH
_target setVariable ["x5r_tags_vivDisabled",false,true];
