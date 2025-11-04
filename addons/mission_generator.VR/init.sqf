player addAction ["Generate arsenal config and copy to clipboard (paste in template itemCfg.sqf)",{execVM "arrayGenerator.sqf";}];
C5R_genBaseItemsActionID = player addAction ["OPTIONAL: Add base loadout items to loadouts",{
	execVM "addBaseLoadoutItems.sqf";
	player removeAction C5R_genBaseItemsActionID;
}, nil, 1.5, false, false, "", "true", 50, false, "", ""];
