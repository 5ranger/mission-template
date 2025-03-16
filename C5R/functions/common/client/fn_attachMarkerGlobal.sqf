///////////////////////////////////////
// Creates a marker that moves with the target
// Syntax: [target,icon,text] call C5R_Common_fnc_attachMarkerGlobal;
// target: Object to attach to
// icon: String - See cfgMarker
// text(Optional): String - text added to marker
// Example: [this,"Warning","Convoy"] call C5R_Common_fnc_attachMarkerGlobal;
///////////////////////////////////////
params ["_tgt","_markerType","_text"]; 
[_tgt,_markerType,_text] remoteExec ["C5R_Common_fnc_attachMarkerServer",2]; 