call x5r_logistics_fnc_initArsenal; // Create arsenals and default loadouts from itemCfg
[west, x5r_marker_spawn, "Coy HQ"] call BIS_fnc_addRespawnPosition; // Create base respawn position
call x5r_common_fnc_freezeLayer; // Used by in training missions to create large amounts of dummy AI, essentially mannequins
call x5r_common_fnc_dynamicSimulation; // Postpone dynamic simulation to let AI settle in positions
// Register ACE Fortify objects 
// [side,budget,[[classname, cost, category], [classname, cost, category]]] call ace_fortify_fnc_registerObjects;		
[west, 2000, [ 
	["Land_BagFence_Short_F", 6, "Sandbag - Tan"], 
	["Land_BagFence_Long_F", 10, "Sandbag - Tan"], 
	["Land_BagFence_Round_F", 10, "Sandbag - Tan"], 
	["UK3CB_Nest", 40, "Sandbag - Tan"], 
	["Land_BagBunker_01_small_green_F", 50, "Sandbag - Tan"], 
	["Land_BagBunker_Large_F", 100, "Sandbag - Tan"], 

	["Land_BagFence_01_short_green_F", 6, "Sandbag - Woodland"], 
	["Land_BagFence_01_long_green_F", 10, "Sandbag - Woodland"], 
	["Land_BagFence_01_round_green_F", 10, "Sandbag - Woodland"], 
	["UK3CB_Nest_Jun", 40, "Sandbag - Woodland"], 
	["Land_BagBunker_01_small_green_F", 50, "Sandbag - Woodland"], 
	["Land_BagBunker_01_large_green_F", 100, "Sandbag - Woodland"],
	
	["Land_HBarrier_1_F", 12, "H-Barrier - Tan"], 
	["Land_HBarrier_3_F", 18, "H-Barrier - Tan"], 
	["Land_HBarrier_5_F", 20, "H-Barrier - Tan"], 
	["Land_HBarrierWall_corridor_F", 30, "H-Barrier - Tan"], 
	["Land_HBarrierWall_corner_F", 50, "H-Barrier - Tan"], 
	["Land_HBarrierWall4_F", 50, "H-Barrier - Tan"],
	["Land_HBarrierWall6_F", 100, "H-Barrier - Tan"], 
	["Land_HBarrierTower_F", 120, "H-Barrier - Tan"],
	["Land_Fort_Watchtower_EP1", 150, "H-Barrier - Tan"],

	["Land_HBarrier_01_line_1_green_F", 12, "H-Barrier - Woodland"], 
	["Land_HBarrier_01_line_3_green_F", 18, "H-Barrier - Woodland"], 
	["Land_HBarrier_01_line_5_green_F", 20, "H-Barrier - Woodland"], 
	["Land_HBarrier_01_wall_corridor_green_F", 30, "H-Barrier - Woodland"], 
	["Land_HBarrier_01_wall_corner_green_F", 50, "H-Barrier - Woodland"], 
	["Land_HBarrier_01_wall_4_green_F", 50, "H-Barrier - Woodland"],
	["Land_HBarrier_01_wall_6_green_F", 100, "H-Barrier - Woodland"], 
	["Land_HBarrier_01_big_tower_green_F", 120, "H-Barrier - Woodland"],
	["Land_HBarrier_01_tower_green_F", 150, "H-Barrier - Woodland"],
	

	["Land_MedicalTent_01_wdl_closed_F", 50, "Misc"],
	["Land_MedicalTent_01_MTP_closed_F", 50, "Misc"],
	["Wire",12, "Misc"],
	["Land_fort_artillery_nest", 150, "Misc"],
	["Land_fort_artillery_nest_EP1", 150, "Misc"],
	["Land_PortableLight_double_F", 5, "Misc"],
	["PARACHUTE_TARGET", 0, "Misc"],
	["Land_HelipadSquare_F", 0, "Misc"]
]] call ace_fortify_fnc_registerObjects;
