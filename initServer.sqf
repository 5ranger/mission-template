#include "itemCfg.sqf"; // Read itemCfg. Contains arsenal items, default loadouts, vehicle inventories and custom crates
call C5R_itemCfg_fnc_initArsenals; // Create arsenals and default loadouts from itemCfg
[west, C5R_spawn, "Coy HQ"] call BIS_fnc_addRespawnPosition; // Create base respawn position
call C5R_Common_fnc_freezeLayer; // Used by in training missions to create large amounts of dummy AI, essentially mannequins
call C5R_Common_fnc_dynamicSimulation; //Postpone dynamic simulation to let AI settle in positions
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

