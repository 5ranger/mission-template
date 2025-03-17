// Fill inventory with itemCfg crates entry
params ["_itemCfgHashKey","_inventory","_clear"]; 
if (_clear == true) then { 
	clearItemCargoGlobal _inventory; 
	clearMagazineCargoGlobal _inventory; 
	clearWeaponCargoGlobal _inventory; 
	clearBackpackCargoGlobal _inventory; 
} else {}; 
{
	_x params [["_it",[]],["_mag",[]],["_wp",[]],["_bpk",[]]]; 
	diag_log str _x;
	{_inventory addItemCargoGlobal [_x#0,_x#1]} count _it; 
	{_inventory addMagazineAmmoCargo [_x#0,_x#2,_x#1]} count _mag; 
	{_inventory addWeaponWithAttachmentsCargoGlobal [_x,1]} count _wp; 
	{_inventory addBackpackCargoGlobal [_x,1]} count _bpk; 
} forEach (5r_crates get _itemCfgHashKey); 
_inventory setVariable ["5r_fillInventoryComplete", true, true]; 