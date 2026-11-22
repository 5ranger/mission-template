// Set ACE default loadouts
{
	private _loadoutName = _x;
	private _loadoutData = x5r_config_loadoutMap get _loadoutName;
	[_loadoutName, _loadoutData, true] call ace_arsenal_fnc_addDefaultLoadout;
} forEach (keys x5r_config_loadoutMap);

diag_log "Default Loadouts added to arsenals";

// Initialize ACE Arsenal on all placed player arsenal objects
{
	[_x, x5r_config_itemArray, true] call ace_arsenal_fnc_initBox;
	_x setVariable ["x5r_tags_vivDisabled",true,true];

	// Create Respawn actions for clients, JIP keyed to object
	[_x] remoteExec ["x5r_fnc_addForceRespawnActions", [0, -2] select isDedicated, _x];
} forEach x5r_obj_arsenalArray;

diag_log "Arsenals created";
