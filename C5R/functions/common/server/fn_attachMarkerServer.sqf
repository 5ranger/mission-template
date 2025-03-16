params ["_tgt","_markerType","_text"]; 
if (isNil "C5R_attachMarkerCounter") then {C5R_attachMarkerCounter = 0} else {C5R_attachMarkerCounter = C5R_attachMarkerCounter + 1}; 
_name = "_USER_DEFINED_C5R_attachedMarker_" + (str C5R_attachMarkerCounter); 
_marker = createMarkerLocal [_name, _tgt]; 
_marker setMarkerTypeLocal _markerType;
if (!(isNil _text)) then {_marker setMarkerTextLocal _text;}; 
[_tgt,_marker,_markerType] spawn {
	params ["_tgt","_marker","_markerType"];
	while {markerType _marker == _markerType} do {_marker setMarkerPos getposATL _tgt; sleep 10;};
};