params ["_obj"];
_respawnID = (_obj getVariable "5r_respawnID");
_respawnID call BIS_fnc_removeRespawnPosition;
diag_log format ["[5r] Vehicle respawn removed from %1 with ID: %2",_obj,_respawnID];
_obj setVariable ["5r_respawnID",nil,true];