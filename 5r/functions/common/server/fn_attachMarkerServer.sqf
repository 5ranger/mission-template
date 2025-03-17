params ["_tgt","_markerType","_text"]; 
if (isNil "5r_attachMarkerCounter") then {5r_attachMarkerCounter = 0} else {5r_attachMarkerCounter = 5r_attachMarkerCounter + 1}; 
_name = "_USER_DEFINED_5r_attachedMarker_" + (str 5r_attachMarkerCounter); 
_marker = createMarkerLocal [_name, _tgt]; 
_marker setMarkerTypeLocal _markerType;
if (!(isNil _text)) then {_marker setMarkerTextLocal _text;}; 
[_tgt,_marker,_markerType] spawn {
	params ["_tgt","_marker","_markerType"];
	while {markerType _marker == _markerType} do {_marker setMarkerPos getposATL _tgt; sleep 10;};
};