/* Import 5r configuration
  Contains arsenal items, 
  default loadouts, 
  vehicle inventories and
  custom crates
*/
#include "5r/config/itemCfg.sqf";
#include "5r/config/loadoutCfg.sqf";
#include "5r/config/logisticsCfg.sqf";

// Create arsenals and default loadouts from itemCfg
call 5r_itemCfg_fnc_initArsenals;
// Create base respawn position
[west, 5r_spawn, "Coy HQ"] call BIS_fnc_addRespawnPosition;

// Used by in training missions to create large amounts of dummy AI, essentially mannequins
call 5r_common_fnc_freezeLayer;
// Postpone dynamic simulation to let AI settle in positions
call 5r_common_fnc_dynamicSimulation;

// Register ACE Fortify objects 
[west, 360, [ 
	["Land_BagFence_Short_F", 6, "Tan"], 
	["Land_BagFence_Long_F", 10, "Tan"], 
	["Land_BagFence_Round_F", 10, "Tan"], 
	["UK3CB_Nest", 40, "Tan"], 
	["Land_BagBunker_01_small_green_F", 50, "Tan"], 
	["Land_BagBunker_Large_F", 100, "Tan"], 
	["Land_BagFence_01_short_green_F", 6, "Woodland"], 
	["Land_BagFence_01_long_green_F", 10, "Woodland"], 
	["Land_BagFence_01_round_green_F", 10, "Woodland"], 
	["UK3CB_Nest_Jun", 40, "Woodland"], 
	["Land_BagBunker_01_small_green_F", 50, "Woodland"], 
	["Land_BagBunker_01_large_green_F", 100, "Woodland"]
]] call ace_fortify_fnc_registerObjects;
