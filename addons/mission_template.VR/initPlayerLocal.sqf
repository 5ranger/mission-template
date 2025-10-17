params ["_player", "_didJIP"];
// Create for players only, not HCs
if (hasInterface) then {
    // Disable AI calculations on player machines
    setMissionOptions createHashMapFromArray [["AIThinkOnlyLocal", true]];
    // J9Suite whitelist
    [[
        "76561197965400858",    // Cathode
        "76561198141409958",    // Max
        "76561198993593130",    // Rx
        "76561198153501805",    // Crow
        "76561198108273886",    // Wast3d
        "76561198047545378",    // Gibs
        "76561198155238046",    // Bobi
        "76561199088931729",    // Eclipsy
        "76561198082623259"     // Mann
    ]] call x5r_common_fnc_createJ9Suite;
    call x5r_common_fnc_brushCutter;
    // Add ability to create empty crates to following vehicle classnames
    [[
        "UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_B",
        "UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A",
        "B_Slingload_01_Cargo_F",
        "UK3CB_BAF_Coyote_Logistics_L111A1_D",
        "UK3CB_BAF_Coyote_Passenger_L111A1_D",
        "UK3CB_BAF_Coyote_Passenger_L111A1_G",
        "UK3CB_BAF_Coyote_Logistics_L111A1_G",
        "UK3CB_BAF_MAN_HX58_Container_ReArm"
    ]] call x5r_logistics_fnc_createEmptyVehicleActions;
    // Add ViV loading to the following crate classnames
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
        "Box_NATO_Wps_F",
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
    ]] call x5r_logistics_fnc_createViVLoadingActions;
    call x5r_logistics_fnc_addRadioRelayActions; // Create Relay Container actions
    ["ace_arsenal_displayClosed", x5r_common_fnc_fixSlingHelmetExploit] call CBA_fnc_addEventHandler;
    enableEngineArtillery false; // Disable Artillery Computer
    call x5r_common_fnc_movePlayerToSpawn; // Move player to spawn location when connected
    call x5r_common_fnc_createSpawnMarkerLocal;
    //ACE Fortify respawn objects. Objects also needs to be in ACE Fortify array (initServer.sqf)
    [[
        "Land_MedicalTent_01_MTP_closed_F",
        "Land_MedicalTent_01_wdl_closed_F"
    ]] call x5r_common_fnc_respawnObjectsEH;
    // Disconnect UAV on death
    player addEventHandler ["Killed", {
        player connectTerminalToUAV objNull;
    }];
    call C5R_Common_fnc_pontoonBridgeObjectEH;
};
