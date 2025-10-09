params ["_obj"];

_respawnID = [west, _obj, "ELS - "+ (getText (configFile >> "CfgVehicles" >> (typeOf _obj) >> "displayName"))] call BIS_fnc_addRespawnPosition;
diag_log format ["Vehicle respawn added on %1 with ID: %2", _obj, _respawnID];
_obj setVariable ["x5r_tags_respawnId", _respawnID, true];
