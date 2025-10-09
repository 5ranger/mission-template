{
	private _loadoutName = _x;
	private _loadoutData = x5r_config_loadoutMap get _loadoutName;
	[_loadoutName, _loadoutData, true] call ace_arsenal_fnc_addDefaultLoadout;
} forEach (keys x5r_config_loadoutMap); // Set ACE default loadouts

diag_log "Default Loadouts added to arsenals";

// Initialize ACE Arsenal on all placed player arsenal objects
{
	private _arsenal = _x;
	[_arsenal, x5r_config_itemArray, true] call ace_arsenal_fnc_initBox;
} forEach x5r_obj_arsenalArray;

diag_log "Arsenals created";
