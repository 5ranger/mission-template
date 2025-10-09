params ["_target"];
// create a relay ID if the object doesn't have one
if (_target isNil "x5r_tags_relayId") then {
	if (isNil "x5r_tags_radioRelayCounter") then {x5r_tags_radioRelayCounter = 1} else {x5r_tags_radioRelayCounter = x5r_tags_radioRelayCounter + 1};
	_target setVariable ["x5r_tags_relayId",x5r_tags_radioRelayCounter,true];
};
// Create attached antennae
_mast = createVehicle ["OmniDirectionalAntenna_01_olive_F", position _target, [], 0];
_mast attachTo [_target, [-0.7, -0.7, 3.32]];
_dish = createVehicle ["SatelliteAntenna_01_Olive_F", position _target, [], 0]; 
_dish attachTo [_target, [0.7, 0.60, 2.2]]; 
// Create an EH disabling the tower if the object is destroyed and save it's ID. !!!CURRENT OBJECT IS NOT DESTRUCTIBLE!!!
_relayEHID = _target addEventHandler ["Killed",
	{
		{
			detach _x;
			deleteVehicle _x;
		}
		forEach attachedObjects (_this select 0);
		[_target] remoteExec ["TFAR_antennas_fnc_deleteRadioTower",[0,-2] select isDedicated];
	}
];
_target setVariable ["x5r_tags_relayKilledEHID",_relayEHID,true];
// Create a unique marker
_marker = createMarkerLocal ["x5r_tags_radioRelay_" + (str (_target getVariable "x5r_tags_relayId")), _target];
_marker setMarkerTypeLocal "loc_Transmitter";
_marker setMarkerColorLocal "ColorWEST";
_marker setMarkerText format ["RR%1",_target getVariable "x5r_tags_relayId"];
// Create relay function, make object immovable and set variable to let it be detectable as active (used to prevent loading)
[_target,30000] remoteExec ["TFAR_antennas_fnc_initRadioTower",[0,-2] select isDedicated];
_target enableSimulationGlobal false;
_target setVariable ["x5r_tags_relayActive",true,true];
_target setVariable ["x5r_tags_vivDisabled",true,true];
