///////////////////////////////////////
// Creates a marker that moves with the target
// Syntax: [target,icon,text] call x5r_common_fnc_attachMarkerGlobal;
// target: Object to attach to
// icon: String - See cfgMarker
// text(Optional): String - text added to marker
// Example: [this,"Warning","Convoy"] call x5r_common_fnc_attachMarkerGlobal;
///////////////////////////////////////
params ["_tgt", "_markerType", "_text"];

[_tgt, _markerType, _text] remoteExec ["x5r_common_fnc_attachMarkerServer", 2]; 
