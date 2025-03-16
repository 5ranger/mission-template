params ["_obj"];
_respawnID = (_obj getVariable "C5R_respawnID");
_respawnID call BIS_fnc_removeRespawnPosition;
diag_log format ["[C5R] Vehicle respawn removed from %1 with ID: %2",_obj,_respawnID];
_obj setVariable ["C5R_respawnID",nil,true];