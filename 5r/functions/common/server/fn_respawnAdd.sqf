params ["_obj"];
_respawnID = [west, _obj, "LSS - "+(getText (configFile >> "CfgVehicles" >> (typeOf _obj) >> "displayName"))] call BIS_fnc_addRespawnPosition;
diag_log format ["[5r] Vehicle respawn added on %1 with ID: %2",_obj,_respawnID];
_obj setVariable ["5r_respawnID",_respawnID,true];