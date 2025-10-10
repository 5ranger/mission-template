// Process items from arsenal and loadouts
_arsenalItems = (toArray ([masterArsenal] call ace_arsenal_fnc_getVirtualItems) select 0); // Create array from all items in masterArsenal
_loadoutItems = flatten ((units loadoutGroup) apply {getUnitLoadout _x}); // Create array from all items in loadouts
_loadoutItems = (_loadoutItems arrayIntersect _loadoutItems) select {(_x isEqualType "") && {_x != ""}};
_arsenalItems append _loadoutItems; //Merge arrays
_allArsenalItems = (_arsenalItems arrayIntersect _arsenalItems) select {(_x isEqualType "") && {_x != ""}}; // Remove duplicate, empty and non-string entries

// Process loadouts
_loadouts = [];
{_loadouts pushBack [(vehicleVarName _x), (getUnitLoadout _x)];} forEach units loadoutGroup; 

// Process inventory presets
_crateArray = [];
{ 
	_items = getItemCargo _x;     
	_mags = magazinesAmmoCargo _x;     
	_crateArray pushBackUnique [(str _x),[[_items #0 apply {[_x,_items #1#(_items #0 find _x)]},
	(_mags arrayintersect _mags) apply {private _v= _x;_x+[{_v isEqualTo _x} count _mags]},
	weaponsItemsCargo _x,
	backpackCargo _x]]];
} forEach (getMissionLayerEntities "CrateLayer" select 0);

// Export arrays to clipboard
_br = toString [13,10];
_copyString = 
	"x5r_config_itemArray = " + (str _allArsenalItems) + ";" + _br + 
	"x5r_config_loadoutMap = createHashMapFromArray " + (str _loadouts)+ ";" + _br + 
	"x5r_config_crateMap = createHashMapFromArray " + (str _crateArray)+ ";"
;

copyToClipboard _copyString;
