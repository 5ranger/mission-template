params ["_tgt","_markerType","_text"];

if (isNil "x5r_tags_attachMarkerCounter") then {x5r_tags_attachMarkerCounter = 0} else {x5r_tags_attachMarkerCounter = x5r_tags_attachMarkerCounter + 1}; 
_name = "_USER_DEFINED_x5r_tags_attachedMarker_" + (str x5r_tags_attachMarkerCounter); 
_marker = createMarkerLocal [_name, _tgt]; 
_marker setMarkerTypeLocal _markerType;
if (!(isNil _text)) then {_marker setMarkerTextLocal _text;}; 
[_tgt,_marker,_markerType] spawn {
	params ["_tgt","_marker","_markerType"];
	while {markerType _marker == _markerType} do {_marker setMarkerPos getposATL _tgt; sleep 10;};
};
