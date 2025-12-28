x5r_config_airArray =  
["#Air",[
  ["#Rotary",[ 
    ["#Transport",[ 
      ["RHS_MELB_MH6M","",{
        ["fillJAC",_this,true] call x5r_logistics_fnc_initCargo; 
        _this remoteExec ["DAPS_fnc_Nemesis",2];
      },[],1], 
      ["UK3CB_BAF_Wildcat_AH1_TRN_8A","",{
        ["fillJAC",_this,true] call x5r_logistics_fnc_initCargo; 
        _this remoteExec ["DAPS_fnc_Nemesis",2];
      },[],1], 
      ["UK3CB_BAF_Merlin_HC3_32","",{
        [_this, 4] call ace_cargo_fnc_setSpace;
        ["fillJAC",_this,true] call x5r_logistics_fnc_initCargo; 
        _this remoteExec ["DAPS_fnc_Nemesis",2];
      },[],1], 
      ["UK3CB_BAF_Chinook_HC2_cargo","",{
        ["fillJAC",_this,true] call x5r_logistics_fnc_initCargo; 
        _this remoteExec ["DAPS_fnc_Nemesis",2];
      },[],1] 
    ]], 
    ["#Attack",[ 
      ["RHS_MELB_AH6M","",{
        [_this, 2] call ace_cargo_fnc_setSpace; 
        ["fillJAC",_this,true] call x5r_logistics_fnc_initCargo; 
        _this remoteExec ["DAPS_fnc_Nemesis",2];
      },[],1], 
      ["UK3CB_BAF_Wildcat_AH1_6_Generic","",{
        ["fillJAC",_this,true] call x5r_logistics_fnc_initCargo; 
        _this remoteExec ["DAPS_fnc_Nemesis",2];
      },[],1], 
      ["UK3CB_BAF_Apache_AH1_JS","BAF Apache AH1",{
        ["fillJAC",_this,true] call x5r_logistics_fnc_initCargo; 
        _this remoteExec ["DAPS_fnc_Nemesis",2];
      },[],1], 
      ["RHS_AH64D","RHS Apache AH-64",{
        ["fillJAC",_this,true] call x5r_logistics_fnc_initCargo; 
        _this remoteExec ["DAPS_fnc_Nemesis",2];
      },[],1] 
    ]] 
  ]], 
  ["#Fixed-wing",[ 
    ["#Transport",[ 
      ["UK3CB_BAF_Hercules_C4","",{ 
        [_this, 32] call ace_cargo_fnc_setSpace; 
        ["fillJAC",_this,true] call x5r_logistics_fnc_initCargo; 
      },[],1]
    ]]
  ]],
  ["B_helicrew_F","Heli Crewman",{ 
    _this setUnitLoadout (x5r_config_loadoutMap get loadoutHeliCrew);
    _this setSkill 1; 
  },[],1] 
]];
x5r_config_groundWoodlandArray = 
["#Ground - Woodland",[
  ["#Protected Patrol Vehicles (PPV) (SECT)",[ 
    ["UK3CB_BAF_Husky_Passenger_GPMG_Green","",{  
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
      _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
      _this setFuel 0.33; 
    },[],16], 
    ["UK3CB_B_MaxxPro_M2_US_W","",{  
      [_this, ["US_G",1], true] call BIS_fnc_initVehicle;
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
      _this setFuel 0.33; 
    },[],16], 
    ["UK3CB_BAF_Panther_GPMG_Green_A","",{ 
      ["fillPlt",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
      _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
      _this setFuel 0.33; 
    },[],16],
    ["blx_ridgback_HMG_W","",{ 
      ["fillPlt",_this,true] call x5r_logistics_fnc_initCargo;  
      _this setFuel 0.33;
    },[],16]
  ]], 
  ["#Combat Vehicles (CV) (RAC)",[ 
    ["#Challenger 2",[
      ["qav_challenger2","FV4034 Challenger 2",{
        [_this,["olive",1],["camonethull",1,"camonetturret",1,"hull_lab1",0,"hull_lab2",0,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",0,"towshackles",0,"fueldrums",1,"showext_fpe",1,"firstaid",0,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
        _this remoteExec ["DAPS_fnc_APSIronFist",2];
        ["fillAFV",_this,true] call x5r_logistics_fnc_initCargo;
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {

        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
        _this setFuel 0.60;
        ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36],
      ["qav_challenger2_e","FV4034 Challenger 2E",{
        [_this,["olive",1],["towbar",0,"frontskirt",0,"camonethull",1,"camonetturret",1,"hull_lab1",0,"hull_lab2",0,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",0,"towshackles",0,"fueldrums",1,"showext_fpe",1,"firstaid",0,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
        _this remoteExec ["DAPS_fnc_APSIronFist",2];
        ["fillAFV",_this,true] call x5r_logistics_fnc_initCargo;
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {

        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
        _this setFuel 0.60;
        ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36]
    ]],
    ["#Anti-Air",[
      ["B_T_APC_Tracked_01_AA_F","",{
      [_this,["Olive",1],["showCamonetTurret",0,"showCamonetHull",0,"showBags",1]] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call x5r_logistics_fnc_initCargo;
      _this setFuel 0.33;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],22]
    ]],
    ["#Transport",[
      ["UK3CB_BAF_FV432_Mk3_GPMG_Green","",{ 
        ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {
          _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
        _this setFuel 0.33;
        ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
      },[],24],
      ["UK3CB_B_AAV_US_WDL","",{ 
        ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
        _this setFuel 0.33; 
      },[],28],
      ["UK3CB_BAF_Warrior_A3_W_Cage_Camo","FV510 Warrior",{
        [_this,["BAF_01",1],["showBags",1,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",1,"showSLATHull",1,"showSLATTurret",1]] call BIS_fnc_initVehicle;
        ["fillSection",_this,true] call x5r_logistics_fnc_initCargo;
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {
          _this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Milan", 2]; 
        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;  
        _this setFuel 0.33; 
        ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],28]
    ]]
  ]], 
  ["#Manoeuvre Support Vehicles (MSV) (FST)",[ 
    ["UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Green_A","",{ 
      [_this,["Green",1],["AerialFL_Hide",0,"AerialFR_Hide",0,"AirIntakeSnorkel_Hide",0,"CamoNet_Hide",1,"Gear_Hide",0,"AerialAtuL_Hide",0,"AerialAtuR_Hide",0,"Flag_Hide",0,"Mudguards_Hide",0,"SideLockers_Hide",0]] call BIS_fnc_initVehicle;
      ["fillFST",_this,true] call x5r_logistics_fnc_initCargo; 
      [_this, 8] call ace_cargo_fnc_setSpace;
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",7]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
    },[],12], 
    ["UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_A","",{ 
      [_this,["Green",1],["AerialFL_Hide",0,"AirIntakeSnorkel_Hide",0,"CamoNet_Hide",1,"Gear_Hide",0,"AerialAtuL_Hide",0,"AerialAtuR_Hide",0,"AerialFR_Hide",0,"Flag_Hide",0,"Mudguards_Hide",0,"SideLockers_Hide",0]] call BIS_fnc_initVehicle;
      ["fillFST",_this,true] call x5r_logistics_fnc_initCargo; 
      [_this, 8] call ace_cargo_fnc_setSpace;
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",3]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
    },[],12], 
    ["UK3CB_BAF_LandRover_WMIK_Milan_FFR_Green_A","",{ 
      [_this,["Green",1],["AerialFL_Hide",0,"AerialFR_Hide",0,"AirIntakeSnorkel_Hide",0,"CamoNet_Hide",1,"Gear_Hide",0,"AerialAtuL_Hide",0,"AerialAtuR_Hide",0,"Flag_Hide",0,"Mudguards_Hide",0,"SideLockers_Hide",0]] call BIS_fnc_initVehicle;
      ["fillFST",_this,true] call x5r_logistics_fnc_initCargo;
      [_this, 8] call ace_cargo_fnc_setSpace; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
        _this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Milan", 2];
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
    },[],12], 
    ["UK3CB_BAF_Jackal2_L111A1_G","",{ 
      [_this,["Green",1],["Angled_Bar_Hide",0,"Curved_Bar_Hide",1]] call BIS_fnc_initVehicle;
      ["fillFST",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6]; 
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",5]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
    },[],18]
  ]], 
  ["#Logistic Support Vehicles (LSV) (ELS)",[
    ["#Demining",[
      ["UK3CB_BAF_LandRover_Panama_Green_A","",{ 
        [_this,	["Green",1], ["CamoNetMain_Hide",0,"AirIntakeSnorkel_Hide",0,"Mudguards_Hide",0]] call BIS_fnc_initVehicle;
        createVehicleCrew _this;
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearItemCargoGlobal _this;
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
        _this setFuel 0.50; 
      },[],12],
      ["rhsusf_stryker_m1132_m2_wd","",{ 
        ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {
          _this addItemCargoGlobal ["ACE_Fortify",1];
        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
        _this setFuel 0.50; 
        ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
        ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
        ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
        ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem; 
      },[],30] 
    ]],  
    ["UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_B","",{ 
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",3];
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",4]; 
        _this addItemCargoGlobal ["ACE_Fortify",1];
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this] remoteExec ["x5r_common_fnc_attachRespawnActions", 0, true];
      _this setFuel 0.33; 
    },[],12], 
    ["rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd","",{ 
      [_this, ["rhs_woodland",1], ["hide_ogpkover",0,"hide_ogpknet",1,"hide_ogpkst",0,"hide_spare",0,"FlagPole_pos",0]] call BIS_fnc_initVehicle;
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addItemCargoGlobal ["ACE_Fortify",1];
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this, 24] call ace_cargo_fnc_setSpace;  
      [_this, 1200] remoteExec ["ace_refuel_fnc_makeSource",2];
      _this setFuel 0.50; 
    },[],32], 
    ["rhsusf_M978A4_BKIT_usarmy_wd","",{ 
      [_this, ["rhs_woodland",1], ["hide_ogpkover",0,"hide_ogpknet",1,"hide_ogpkbust",0,"hide_spare",0,"FlagPole_pos",0]] call BIS_fnc_initVehicle;
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addItemCargoGlobal ["ACE_Fortify",1];
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this, 2] call ace_cargo_fnc_setSpace;
      _this setFuel 0.50; 
    },[],32], 
    ["UK3CB_BAF_MAN_HX58_Cargo_Green_A","",{ 
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addItemCargoGlobal ["ACE_Fortify",1];
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this, 2] call ace_cargo_fnc_setSpace;
      _this setFuel 0.50; 
    },[],32], 
    ["UK3CB_BAF_MAN_HX58_Transport_Green","",{ 
      [_this, ["Green",1], ["ClanLogo_Hide",1]] call BIS_fnc_initVehicle;
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addItemCargoGlobal ["ACE_Fortify",1];
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this, 10] call ace_cargo_fnc_setSpace;  
      _this setFuel 0.50; 
      [_this] remoteExec ["x5r_common_fnc_attachRespawnActions", 0, true]; 
    },[],26], 
    ["UK3CB_BAF_FV432_Mk3_GPMG_Green","",{ 
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo;
      [_this, 8] call ace_cargo_fnc_setSpace; 
      _this setVariable ["ace_repair_canRepair", 1, true];
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.50; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
    },[],24], 
    ["UK3CB_BAF_Coyote_Logistics_L111A1_G","",{ 
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo;
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6];
        _this addItemCargoGlobal ["ACE_Fortify",1];
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
      _this setFuel 0.50; 
      [_this] remoteExec ["x5r_common_fnc_attachRespawnActions", 0, true];
    },[],22], 
    ["UK3CB_BAF_Coyote_Passenger_L111A1_G",["","","With Repair"],{ 
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6];
        _this addItemCargoGlobal ["ACE_Fortify",1];
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.50; 
      _this setVariable ["ace_repair_canRepair", 1, true];
      [_this] remoteExec ["x5r_common_fnc_attachRespawnActions", 0, true];
      [_this, 15] call ace_cargo_fnc_setSpace;
    },[],22], 
    ["B_T_UGV_01_olive_F","",{ 
      createVehicleCrew _this;
      clearWeaponCargoGlobal _this;
      clearMagazineCargoGlobal _this;
      clearItemCargoGlobal _this;
      clearBackpackCargoGlobal _this;
      [_this,0] remoteExec ["setMaxLoad",2];
      [_this, 2] call ace_cargo_fnc_setSpace; 
    },[],10]
  ]],
  ["rhsusf_m109_usarmy","",{
    [_this,["standard",1],["IFF_Panels_Hide",1,"showCanisters",0,"showCamonetTurret",0,"showAmmobox",0,"showCamonetHull",0]] call BIS_fnc_initVehicle;
    ["fillAFV",_this,true] call x5r_logistics_fnc_initCargo;
    _this setFuel 0.60;
    ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
    },[],36],
  ["B_crew_F","Vehicle Crewman",{ 
    _this setUnitLoadout (x5r_config_loadoutMap get loadoutVehicleCrew) 
  },[],1] 
]];
x5r_config_groundSandArray = 
["#Ground - Sand",[
  ["#Protected Patrol Vehicles (PPV) (SECT)",[ 
    ["UK3CB_BAF_Husky_Passenger_GPMG_Sand","",{  
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
    },[],16], 
    ["UK3CB_B_MaxxPro_M2_US","",{ 
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
      _this setFuel 0.33; 
    },[],16], 
    ["UK3CB_BAF_Panther_GPMG_Sand_A","",{ 
      ["fillPlt",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
    },[],16],
    ["blx_ridgback_HMG_D","",{ 
      ["fillPlt",_this,true] call C5R_ItemCfg_fnc_initInventory;  
      _this setFuel 0.33;    
    },[],16]
  ]], 
  ["#Combat Vehicles (CV) (RAC)",[ 
    ["#Challenger 2",[
      ["qav_challenger2","FV4034 Challenger 2",{
        [_this,["natoarid",1],["camonethull",1,"camonetturret",1,"hull_lab1",0,"hull_lab2",0,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",0,"towshackles",0,"fueldrums",1,"showext_fpe",1,"firstaid",0,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
        _this remoteExec ["DAPS_fnc_APSIronFist",2];
        ["fillAFV",_this,true] call x5r_logistics_fnc_initCargo;
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
        _this setFuel 0.60;
        ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36],
      ["qav_B_challenger2_e","FV4034 Challenger 2E",{
        [_this,["natoarid",1],["towbar",0,"frontskirt",0,"camonethull",1,"camonetturret",1,"hull_lab1",0,"hull_lab2",0,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",0,"towshackles",0,"fueldrums",1,"showext_fpe",1,"firstaid",0,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
        _this remoteExec ["DAPS_fnc_APSIronFist",2];
        ["fillAFV",_this,true] call x5r_logistics_fnc_initCargo;
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
        _this setFuel 0.60;
        ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36]
    ]],
    ["#Anti-Air",[
      ["B_T_APC_Tracked_01_AA_F","",{
        [_this,["Sand",1],["showCamonetTurret",0,"showCamonetHull",0,"showBags",1]] call BIS_fnc_initVehicle;
        ["fillAFV",_this,true] call x5r_logistics_fnc_initCargo;
        _this setFuel 0.33;
        ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],22]
    ]],
    ["#Transport",[
      ["UK3CB_BAF_FV432_Mk3_GPMG_Sand","",{ 
        ["fillSection",_this,true] call x5r_logistics_fnc_initCargo;
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {
          _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
        _this setFuel 0.33; 
        ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
      },[],24],
      ["UK3CB_B_AAV_US_DES","",{
        ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
        _this setFuel 0.33; 
      },[],28],
      ["UK3CB_BAF_Warrior_A3_D_Cage_Camo","FV510 Warrior",{
        [_this,["BAF_02",1],["showBags",1,"showBags2",1,"showCamonetHull",1,"showCamonetTurret",1,"showTools",1,"showSLATHull",1,"showSLATTurret",1]] call BIS_fnc_initVehicle;
        ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {
          _this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Milan", 2];
        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;  
        _this setFuel 0.33; 
        ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],28]
    ]]
  ]], 
    ["#Manoeuvre Support Vehicles (MSV) (FST)",[ 
      ["UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Sand_A","",{ 
        [_this,["Sand",1],["AerialAtuL_Hide",0,"AerialAtuR_Hide",0,"AerialFL_Hide",0,"AerialFR_Hide",0,"AirIntakeSnorkel_Hide",0,"CamoNet_Hide",1,"Gear_Hide",0,"Flag_Hide",0,"Mudguards_Hide",1,"SideLockers_Hide",0]] call BIS_fnc_initVehicle;
        ["fillFST",_this,true] call x5r_logistics_fnc_initCargo; 
        [_this, 8] call ace_cargo_fnc_setSpace;
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {
          _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",7]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
    },[],12], 
    ["UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A","",{ 
      [_this,["Sand",1],["AerialAtuL_Hide",0,"AerialAtuR_Hide",0,"AerialFL_Hide",0,"AerialFR_Hide",0,"AirIntakeSnorkel_Hide",0,"CamoNet_Hide",1,"Gear_Hide",0,"Flag_Hide",0,"Mudguards_Hide",0,"SideLockers_Hide",0]] call BIS_fnc_initVehicle;
      ["fillFST",_this,true] call x5r_logistics_fnc_initCargo; 
      [_this, 8] call ace_cargo_fnc_setSpace;
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",3]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
    _this setFuel 0.33; 
    },[],12], 
    ["UK3CB_BAF_LandRover_WMIK_Milan_FFR_Sand_A","",{ 
      [_this,["Sand",1],["AerialAtuL_Hide",0,"AerialAtuR_Hide",0,"AerialFL_Hide",0,"AerialFR_Hide",0,"AirIntakeSnorkel_Hide",0,"CamoNet_Hide",1,"Gear_Hide",0,"Flag_Hide",0,"Mudguards_Hide",0,"SideLockers_Hide",0]] call BIS_fnc_initVehicle;
      ["fillFST",_this,true] call x5r_logistics_fnc_initCargo; 
      [_this, 8] call ace_cargo_fnc_setSpace;
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
        _this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Milan", 2];
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
    },[],12], 
    ["UK3CB_BAF_Jackal2_L111A1_D","",{ 
      [_this,["Desert",1],["Angled_Bar_Hide",0,"Curved_Bar_Hide",1]] call BIS_fnc_initVehicle;
      ["fillFST",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6]; 
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",5]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
    },[],18]
  ]], 
  ["#Logistic Support Vehicles (LSV) (ELS)",[
    ["#Demining",[
      ["UK3CB_BAF_LandRover_Panama_Sand_A","",{ 
        [_this,	["Green",1], ["CamoNetMain_Hide",0,"AirIntakeSnorkel_Hide",0,"Mudguards_Hide",0]] call BIS_fnc_initVehicle;
        createVehicleCrew _this;
        clearWeaponCargoGlobal _this; 
        clearBackpackCargoGlobal _this; 
        clearMagazineCargoGlobal _this; 
        clearItemCargoGlobal _this;
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
        _this setFuel 0.50; 
      },[],12],
      ["rhsusf_stryker_m1132_m2_d","",{ 
        [_this, ["Tan",1], ["SMP",1,"SMP_L",1,"SMP_R",1,"hide_SMP",0,"Hide_CIP",1,"Dispenser_Fold",0,"Hatch_Commander",0,"Hatch_Front",0,"Hatch_Left",0,"Hatch_Right",0,"Ramp",0,"Hide_Antenna_1",0,"Hide_Antenna_2",0,"Hide_Antenna_3",0,"Hide_DEK",0,"Hide_DUKE",0,"Hide_ExDiff",0,"Hide_FCans",0,"Hide_WCans",0,"Hide_GPS",0,"Hide_PioKit",0,"Hide_StgBar",0,"Hide_STORM",0,"Hide_SuspCov",0,"Hide_Towbar",0,"Extend_Mirrors",0,"Hatch_Driver",0]] call BIS_fnc_initVehicle; 
        ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
        [{_this getVariable "x5r_tags_inventoryReady" == true}, {
          _this addItemCargoGlobal ["ACE_Fortify",1]; 
        },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
        _this setFuel 0.50; 
        ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
        ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
        ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
        ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem; 
      },[],30] 
    ]], 
    ["UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A","",{ 
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",3]; 
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this] remoteExec ["x5r_common_fnc_attachRespawnActions", 0, true];
      _this setFuel 0.33; 
    },[],12], 
    ["rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d","",{ 
      [_this, nil, ["hide_ogpkover",0,"hide_ogpknet",1,"hide_ogpkbust",0,"hide_spare",0,"FlagPole_pos",0]] call BIS_fnc_initVehicle;
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this, 24] call ace_cargo_fnc_setSpace;  
      [_this, 1200] remoteExec ["ace_refuel_fnc_makeSource",2];
      _this setFuel 0.50; 
    },[],32], 
    ["rhsusf_M978A4_BKIT_usarmy_d","",{ 
      [_this, ["Sand",1], ["ClanLogo_Hide",1]] call BIS_fnc_initVehicle;
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this, 2] call ace_cargo_fnc_setSpace;
      _this setFuel 0.50; 
    },[],32],  
    ["UK3CB_BAF_MAN_HX58_Cargo_Sand_A","",{ 
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this, 2] call ace_cargo_fnc_setSpace;
      _this setFuel 0.50; 
    },[],32], 
    ["UK3CB_BAF_MAN_HX58_Transport_Sand","",{ 
      [_this, ["Sand",1], ["ClanLogo_Hide",1]] call BIS_fnc_initVehicle;
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      [_this, 10] call ace_cargo_fnc_setSpace;  
      _this setFuel 0.50; 
      [_this] remoteExec ["x5r_common_fnc_attachRespawnActions", 0, true]; 
    },[],26], 
    ["UK3CB_BAF_FV432_Mk3_GPMG_Sand","",{ 
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo;
      [_this, 8] call ace_cargo_fnc_setSpace;
      _this setVariable ["ace_repair_canRepair", 1, true];
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
      _this setFuel 0.50; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
    },[],24], 
    ["UK3CB_BAF_Coyote_Logistics_L111A1_D","",{ 
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6];
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.50; 
      [_this] remoteExec ["x5r_common_fnc_attachRespawnActions", 0, true];
    },[],22], 
    ["UK3CB_BAF_Coyote_Passenger_L111A1_D",["","","With Repair"],{ 
      ["fillTeam",_this,true] call x5r_logistics_fnc_initCargo; 
      [{_this getVariable "x5r_tags_inventoryReady" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6]; 
        _this addItemCargoGlobal ["ACE_Fortify",1]; 
      },_this,10,{diag_log format ["Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.50; 
      _this setVariable ["ace_repair_canRepair", 1, true];
      [_this] remoteExec ["x5r_common_fnc_attachRespawnActions", 0, true];
      [_this, 15] call ace_cargo_fnc_setSpace;
    },[],22], 
    ["B_UGV_01_F","",{ 
      createVehicleCrew _this;
      clearWeaponCargoGlobal _this;
      clearMagazineCargoGlobal _this;
      clearItemCargoGlobal _this;
      clearBackpackCargoGlobal _this;
      [_this,0] remoteExec ["setMaxLoad",2];
      [_this, 2] call ace_cargo_fnc_setSpace; 
    },[],10]
  ]],
  ["rhsusf_m109d_usarmy","",{
    [_this,["Desert",1],["IFF_Panels_Hide",0,"showCanisters",0,"showCamonetTurret",0,"showAmmobox",0,"showCamonetHull",0]] call BIS_fnc_initVehicle;
    ["fillAFV",_this,true] call x5r_logistics_fnc_initCargo;
    _this setFuel 0.60;
    ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
  },[],36],
  ["B_crew_F","Vehicle Crewman",{ 
    _this setUnitLoadout (x5r_config_loadoutMap get loadoutVehicleCrew);
    _this setSkill 1; 
  },[],1] 
]];
x5r_config_suppliesArray = 
["#Supplies",[
  ["#Infantry Resupply",[ 
    ["B_CargoNet_01_ammo_F",["Infantry Resupply Crate","@resupply",""],{ 
      ["resupplycrate",_this,true] call x5r_logistics_fnc_initCargo; 
      [_this, 6] call ace_cargo_fnc_setSize;  
    },[],4], 
    ["B_Slingload_01_Cargo_F",["Large Infantry Resupply Container","@resupply",""],{
      ["resupplycrate",_this,true] call x5r_logistics_fnc_initCargo;
      ["resupplycrate",_this,false] call x5r_logistics_fnc_initCargo;
      ["resupplycrate",_this,false] call x5r_logistics_fnc_initCargo;
      [_this, 0] call ace_cargo_fnc_setSpace;   
      [_this, -1] call ace_cargo_fnc_setSize;   
    },[],28], 
    ["UK3CB_BAF_Box_556_Ammo",["5.56mm Magazines Box","@resupply",""],{ 
      clearWeaponCargoGlobal _this; 
      clearMagazineCargoGlobal _this; 
      clearItemCargoGlobal _this; 
      _this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 30];   
      _this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10];   
    },[],2], 
    ["UK3CB_BAF_Box_40_Ammo",["40mm Grenades Box","@resupply",""],{ 
      ["resupply40mm",_this,true] call x5r_logistics_fnc_initCargo; 
    },[],2], 
    ["UK3CB_BAF_Box_L7A2_Ammo",["7.62mm Belts Box","@resupply",""],{
      clearMagazineCargoGlobal _this;
      _this addMagazineCargoGlobal ["UK3CB_BAF_762_100Rnd", 18];
      _this addMagazineCargoGlobal ["UK3CB_BAF_762_100Rnd_T", 6];
    },[],2], 
    ["UK3CB_BAF_Box_762_Ammo",["7.62mm Magazines Box","@resupply",""],{
      clearMagazineCargoGlobal _this;
      _this addMagazineCargoGlobal ["UK3CB_BAF_762_L42A1_20Rnd_T", 28];
    },[],2], 
    ["ACE_medicalSupplyCrate_advanced","",{ 
      ["resupplymedic",_this,true] call x5r_logistics_fnc_initCargo; 
    },[],2], 
    ["Box_NATO_Grenades_F",["Smokes Box","@resupply",""],{ 
      ["resupply_smoke",_this,true] call x5r_logistics_fnc_initCargo;  
      [_this, 2] call ace_cargo_fnc_setSize;  
      [_this,750] remoteExec ["setMaxLoad",2];
    },[],2],
    ["Box_NATO_AmmoOrd_F",["Explosives Crate","",""],{ 
      ["resupplydemo",_this,true] call x5r_logistics_fnc_initCargo;  
      [_this, 2] call ace_cargo_fnc_setSize;  
    },[],2],
    ["Box_NATO_AmmoOrd_F",["M6 Light Mortar Ammo Crate","@resupply",""],{ 
      ["resupply60mm",_this,true] call x5r_logistics_fnc_initCargo;  
      [_this, 2] call ace_cargo_fnc_setSize;  
    },[],2], 
    ["UK3CB_BAF_Box_WpsLaunch_ILAW","",{},[],2],  
    ["UK3CB_BAF_Box_WpsLaunch_NLAW",["NLAW Crate","","5x NLAW"],{
      clearWeaponCargoGlobal _this;
      _this addWeaponCargoGlobal ["launch_NLAW_F", 5];
    },[],2],  
    ["UK3CB_BAF_Box_WpsLaunch_Javelin","",{},[],2],
    ["Box_NATO_WpsLaunch_F",["FIM-92F Weapon Crate","","Weapon + 5rnds"],{
      clearWeaponCargoGlobal _this;
      clearMagazineCargoGlobal _this;
      clearBackpackCargoGlobal _this;
      _this addWeaponCargoGlobal ["rhs_weap_fim92", 1];
      _this addMagazineCargoGlobal ["rhs_fim92_mag", 5];
      [_this, 1] call ace_cargo_fnc_setSize;
    },[],1], 
    ["Box_NATO_WpsSpecial_F",["FIM-92F Ammo Crate","@resupply","13rnd"],{
      clearWeaponCargoGlobal _this;
      clearMagazineCargoGlobal _this;
      clearItemCargoGlobal _this;
      _this addMagazineCargoGlobal ["rhs_fim92_mag", 13];
    },[],2], 
    ["Box_NATO_Wps_F",["MAAWS Ammo Box","@resupply",""],{
      clearWeaponCargoGlobal _this;
      clearMagazineCargoGlobal _this;
      _this addMagazineCargoGlobal ["MRAWS_HE_F", 8];
      _this addMagazineCargoGlobal ["MRAWS_HEAT55_F", 8];
      _this addMagazineCargoGlobal ["MRAWS_HEAT_F", 6];
      _this addMagazineCargoGlobal ["WP_MAAWS_Mag", 10];
    },[],2], 
    ["Box_NATO_WpsLaunch_F",["MAAWS Mod 1 Weapon Crate (FST)","","Weapon + 7 mixed rnds"],{
      clearWeaponCargoGlobal _this;
      clearMagazineCargoGlobal _this;
      clearBackpackCargoGlobal _this;
      _this addWeaponCargoGlobal ["launch_MRAWS_olive_F", 1];
      _this addMagazineCargoGlobal ["MRAWS_HE_F", 2];
      _this addMagazineCargoGlobal ["MRAWS_HEAT55_F", 2];
      _this addMagazineCargoGlobal ["MRAWS_HEAT_F", 1];
      _this addMagazineCargoGlobal ["WP_MAAWS_Mag", 2];
      [_this, 1] call ace_cargo_fnc_setSize;
    },[],1], 
    ["Box_NATO_Equip_F","Night Box",{
    ["resupplyNight",_this,true] call x5r_logistics_fnc_initCargo;  
    },[],3],
    ["Box_NATO_Equip_F","Toolbox",{
      ["resupplyToolbox",_this,true] call x5r_logistics_fnc_initCargo;  
    },[],3],
    ["CargoNet_01_box_F","Field Arsenal (ELS USE ONLY, not loadable)",{
      clearWeaponCargoGlobal _this;
      clearMagazineCargoGlobal _this;
      clearItemCargoGlobal _this;
      clearBackpackCargoGlobal _this;
      [_this, -1] call ace_cargo_fnc_setSize;  
      [_this, x5r_config_itemArray, true] call ace_arsenal_fnc_initBox;
      _this addEventHandler ["Killed", {[_this select 0, true] call ace_arsenal_fnc_removeBox; deleteVehicle _this select 0;}];
    },[],4]
  ]],  
  ["#Vehicle Resupply",[  
    ["Box_NATO_AmmoVeh_F",["ACE vehicle rearm","@resupply",""],{ 
      clearWeaponCargoGlobal _this;
      clearMagazineCargoGlobal _this;
      clearItemCargoGlobal _this;
      clearItemCargoGlobal _this;
      [_this,0] remoteExec ["setMaxLoad",2];
      [_this,5] call ace_cargo_fnc_setSize;
    },[],5], 
    ["UK3CB_BAF_Box_L7A2_Ammo","",{},[],2], 
    ["UK3CB_BAF_Box_L111A1_Ammo","",{},[],2],
    ["UK3CB_BAF_Box_Milan_Ammo","",{},[],2],
    ["ACE_Wheel","",{
      _this spawn {sleep 1; _this setDamage 0};
    },[],1], 
    ["ACE_Track","",{},[],2], 
    ["C_IDAP_supplyCrate_F","Wheel pack 8x",{ 
      clearWeaponCargoGlobal _this;   
      clearMagazineCargoGlobal _this;   
      clearItemCargoGlobal _this;
      clearBackpackCargoGlobal _this;   
      [_this, 8] call ace_cargo_fnc_setSpace;   
      [_this, 6] call ace_cargo_fnc_setSize;   
      ["ACE_Wheel", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Wheel", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Wheel", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Wheel", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Wheel", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Wheel", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Wheel", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Wheel", _this, true] call ace_cargo_fnc_loadItem;   
    },[],6], 
    ["C_IDAP_supplyCrate_F","Track pack 4x",{ 
      clearWeaponCargoGlobal _this;   
      clearMagazineCargoGlobal _this;   
      clearItemCargoGlobal _this;
      clearBackpackCargoGlobal _this;
      [_this, 8] call ace_cargo_fnc_setSpace;   
      [_this, 6] call ace_cargo_fnc_setSize;   
      ["ACE_Track", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Track", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Track", _this, true] call ace_cargo_fnc_loadItem;   
      ["ACE_Track", _this, true] call ace_cargo_fnc_loadItem;   
    },[],6], 
    ["FlexibleTank_01_forest_F","",{},[],3], 
    ["B_Slingload_01_Fuel_F","",{
      [_this, 0] call ace_cargo_fnc_setSpace;
    },[],28], 
    ["B_Slingload_01_Repair_F","",{
      [_this, -1] call ace_cargo_fnc_setSize;   
    },[],28], 
    ["B_Slingload_01_Ammo_F",["Large Vehicle Rearm","@resupply","ACE Rearm + vehicle ammo"],{
      _this addItemCargoGlobal ["UK3CB_BAF_1Rnd_Milan",14];
      _this addItemCargoGlobal ["UK3CB_BAF_127_100Rnd",21];
      _this addItemCargoGlobal ["UK3CB_BAF_762_200Rnd",24];
      [_this, 0] call ace_cargo_fnc_setSpace;
      [_this, -1] call ace_cargo_fnc_setSize;   
    },[],28], 
    ["B_Slingload_01_Cargo_F",["Large Cargo Container","","Empty w/ 50 ACE Cargo"],{
      clearWeaponCargoGlobal _this;
      clearMagazineCargoGlobal _this;
      clearItemCargoGlobal _this;
      clearBackpackCargoGlobal _this;
      [_this,0] remoteExec ["setMaxLoad",2];
      [_this, 50] call ace_cargo_fnc_setSpace;   
      [_this, -1] call ace_cargo_fnc_setSize;   
    },[],28] 
  ]], 
  ["#Static Weapon Platforms",[ 
    ["UK3CB_BAF_Static_L111A1_Deployed_High","",{},[],2], 
    ["UK3CB_BAF_Box_L111A1","",{},[],2], 
    ["UK3CB_BAF_Box_L111A1_Ammo","",{},[],2], 
    ["UK3CB_BAF_Static_L16_Deployed","",{},[],2], 
    ["UK3CB_BAF_Box_L16","",{
      _this addItemCargoGlobal ["ACE_artilleryTable",1];
    },[],2], 
    ["UK3CB_BAF_Box_L16_Ammo_HE",["","","17rnd"],{},[],2], 
    ["UK3CB_BAF_Box_L16_Ammo_Smoke",["","","17rnd"],{},[],2], 
    ["UK3CB_BAF_Box_L16_Ammo_Illumination",["","","17rnd"],{
      ["resupply_l16_ill_s",_this,true] call x5r_logistics_fnc_initCargo;
    },[],2], 
    ["UK3CB_BAF_SupplyCrate_L16_Ammo_HE",["","","44rnd"],{},[],4], 
    ["UK3CB_BAF_SupplyCrate_L16_Ammo_Smoke",["","","44rnd"],{},[],4], 
    ["UK3CB_BAF_SupplyCrate_L16_Ammo_Illumination",["","","44rnd"],{
      ["resupply_l16_ill_l",_this,true] call x5r_logistics_fnc_initCargo;
    },[],4] 
  ]],
  ["Land_Cargo10_military_green_F",["Radio Relay Container","","Indestructible. Needs to be deployed. 25km range"],{
    [_this, 0] call ace_cargo_fnc_setSpace;   
    [_this, -1] call ace_cargo_fnc_setSize;
  },[],28],
  ["B_Slingload_01_Cargo_F",["Bridge Pack (DO NOT SLINGLOAD/AIRDROP)","","Takes 5 seconds to spawn"],{
    _this call x5r_common_fnc_pontoonBridgeCreateObject;   
  },[],28]
]];

x5r_config_navyArray = 
["#Navy",[ 
  ["#Raiding Craft",[
    ["UK3CB_BAF_RHIB_HMG","",{
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo;
    },[],26],
    ["UK3CB_BAF_RHIB_GPMG","",{
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo;
    },[],26],
    ["UK3CB_MDF_B_RHIB_Gunboat","",{
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo;
    },[],26]
  ]],
  ["#Assault Boats",[
    ["rhsusf_mkvsoc","",{
      ["fillSection",_this,true] call x5r_logistics_fnc_initCargo;
    },[],100]
  ]]
]];
