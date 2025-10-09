params ["_obj"];

_respawnID = (_obj getVariable "x5r_tags_respawnId");
_respawnID call BIS_fnc_removeRespawnPosition;
diag_log format ["Vehicle respawn removed from %1 with ID: %2",_obj,_respawnID];
_obj setVariable ["x5r_tags_respawnId", nil, true];
