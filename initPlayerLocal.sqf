#include "5r/config/setupCfg.sqf";

params ["_player", "_didJIP"];

// Create for players only, not HCs
if (hasInterface) then {
    [5r_J9_memberList] call 5r_common_fnc_createJ9Suite;
    call 5r_common_fnc_fixZeus;
    call 5r_common_fnc_brushCutter;

	// Add ability to create empty crates to following classnames
	[[
		"UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_B",
		"UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A",
		"B_Slingload_01_Cargo_F",
		"UK3CB_BAF_Coyote_Logistics_L111A1_D",
		"UK3CB_BAF_Coyote_Passenger_L111A1_D",
		"UK3CB_BAF_Coyote_Passenger_L111A1_G",
		"UK3CB_BAF_Coyote_Logistics_L111A1_G",
		"UK3CB_BAF_MAN_HX58_Container_ReArm"
	]] call 5r_Logistics_fnc_createEmptyVehicleActions;

	// Add ViV loading to the following classnames
	[[
		"B_CargoNet_01_ammo_F",
		"UK3CB_BAF_Box_556_Ammo",
		"UK3CB_BAF_Box_40_Ammo",
		"UK3CB_BAF_Box_L7A2_Ammo",
		"UK3CB_BAF_Box_762_Ammo",
		"ACE_medicalSupplyCrate_advanced",
		"Box_NATO_AmmoOrd_F",
		"UK3CB_BAF_Box_WpsLaunch_ILAW",
		"UK3CB_BAF_Box_WpsLaunch_NLAW",
		"UK3CB_BAF_Box_WpsLaunch_Javelin",
		"Box_NATO_WpsLaunch_F",
		"Box_NATO_WpsSpecial_F",
		"Box_NATO_Equip_F",
		"CargoNet_01_box_F",
		"Box_NATO_AmmoVeh_F",
		"UK3CB_BAF_Box_Milan_Ammo",
		"UK3CB_BAF_Box_Warrior_Ammo",
		"C_IDAP_supplyCrate_F",
		"FlexibleTank_01_forest_F",
		"UK3CB_BAF_Box_L111A1",
		"UK3CB_BAF_Box_L111A1_Ammo",
		"UK3CB_BAF_Box_L16", 
		"UK3CB_BAF_Box_L16_Ammo_HE",
		"UK3CB_BAF_Box_L16_Ammo_Smoke",
		"UK3CB_BAF_Box_L16_Ammo_Illumination",
		"UK3CB_BAF_SupplyCrate_L16_Ammo_HE",
		"UK3CB_BAF_SupplyCrate_L16_Ammo_Smoke",
		"UK3CB_BAF_SupplyCrate_L16_Ammo_Illumination",
		"B_Slingload_01_Ammo_F",
		"B_Slingload_01_Fuel_F",
		"B_Slingload_01_Cargo_F",
		"B_Slingload_01_Repair_F",
		"Land_Cargo10_military_green_F"
	]] call 5r_Logistics_fnc_createViVLoadingActions;

    // Create Relay Container actions
	call 5r_Logistics_fnc_addRadioRelayActions; 
	["ace_arsenal_displayClosed", 5r_common_fnc_fixSlingHelmetExploit] call CBA_fnc_addEventHandler;

    // Disable Artillery Computer
	enableEngineArtillery false;

	// Move player to spawn location when connected
	call 5r_common_fnc_movePlayerToSpawn;
	call 5r_common_fnc_createSpawnMarkerLocal;
};