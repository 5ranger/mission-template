params ["_itemCfgHashKey", "_inventory", "_clear"];

if (_clear) then {
	clearItemCargoGlobal _inventory;
	clearMagazineCargoGlobal _inventory;
	clearWeaponCargoGlobal _inventory;
	clearBackpackCargoGlobal _inventory;
};

{
	_x params [
		["_items", []],
		["_magazines", []],
		["_weapons", []],
		["_backpacks", []]
	];
	diag_log str _x;

	// Add items
	{
		_inventory addItemCargoGlobal [_x#0, _x#1];
	} forEach _items;

	// Add magazines
	{
		_inventory addMagazineAmmoCargo [_x#0, _x#2, _x#1];
	} forEach _magazines;

	// Add weapons
	{
		_inventory addWeaponWithAttachmentsCargoGlobal [_x, 1];
	} forEach _weapons;

	// Add backpacks
	{
		_inventory addBackpackCargoGlobal [_x, 1];
	} forEach _backpacks;

} forEach (x5r_config_crateMap get _itemCfgHashKey);

_inventory setVariable ["x5r_tags_inventoryReady", true, true];
