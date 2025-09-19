///////////////////////////////////////
// Defining arrays for asset spawning
// Used in SSS modules
///////////////////////////////////////
C5R_SSSAirArray =  
["#Air",[
 ["#Rotary",[ 
  ["#Transport",[ 
   ["RHS_MELB_MH6M","",{
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
    _this remoteExec ["DAPS_fnc_Nemesis",2];
   },[],1], 
   ["UK3CB_BAF_Wildcat_AH1_TRN_8A","",{
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
    _this remoteExec ["DAPS_fnc_Nemesis",2];
   },[],1], 
   ["UK3CB_BAF_Merlin_HC3_32","",{
    [_this, 4] call ace_cargo_fnc_setSpace;
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
    _this remoteExec ["DAPS_fnc_Nemesis",2];
   },[],1], 
   ["UK3CB_BAF_Chinook_HC2_cargo","",{
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
    _this remoteExec ["DAPS_fnc_Nemesis",2];
   },[],1] 
  ]], 
  ["#Attack",[ 
   ["RHS_MELB_AH6M","",{
    [_this, 2] call ace_cargo_fnc_setSpace; 
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
    _this remoteExec ["DAPS_fnc_Nemesis",2];
   },[],1], 
   ["UK3CB_BAF_Wildcat_AH1_6_Generic","",{
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
    _this remoteExec ["DAPS_fnc_Nemesis",2];
   },[],1], 
   ["UK3CB_BAF_Apache_AH1_JS","BAF Apache AH1",{
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
    _this remoteExec ["DAPS_fnc_Nemesis",2];
   },[],1], 
  ["RHS_AH64D","RHS Apache AH-64",{
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
    _this remoteExec ["DAPS_fnc_Nemesis",2];
   },[],1] 
  ]] 
 ]], 
 ["#Fixed-wing",[ 
  ["#Transport",[ 
   ["UK3CB_BAF_Hercules_C4","",{ 
    [_this, 32] call ace_cargo_fnc_setSpace; 
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   },[],1],
   ["usaf_c5","",{
    [_this, 150] call ace_cargo_fnc_setSpace; 
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   },[],1]
  ]],
  ["#Attack",[ 
   ["F_35C","",{
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   },[],1], 
  ["F_35C_S","",{
    ["fillJAC",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   },[],1] 
  ]] 
 ]],
 ["B_helicrew_F","Heli Crewman",{ 
  _this setUnitLoadout (C5R_loadouts get loadoutHeliCrew);
  _this setSkill 1; 
 },[],1] 
]];
C5R_SSSGroundWoodlandArray = 
["#Ground - Woodland",[
 ["#Protected Patrol Vehicles (PPV) (SECT)",[ 
  ["UK3CB_BAF_Husky_Passenger_GPMG_Green","",{  
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
   _this setFuel 0.33; 
  },[],16], 
  ["UK3CB_B_MaxxPro_M2_US_W","",{  
   [_this, ["US_G",1], true] call BIS_fnc_initVehicle;
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   _this setFuel 0.33; 
  },[],16], 
  ["UK3CB_BAF_Panther_GPMG_Green_A","",{ 
   ["fillPlt",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
   _this setFuel 0.33; 
  },[],16], 
  ["blx_ridgback_HMG_W","",{ 
   ["fillPlt",_this,true] call C5R_ItemCfg_fnc_initInventory;  
   _this setFuel 0.33; 
  },[],16]  
]], 
 ["#Combat Vehicles (CV) (KRH)",[ 
  ["#Challenger 2",[
      ["qav_challenger2","FV4034 Challenger 2 (Standard)",{
      [_this,["oliveblack",1],["camonethull",0,"camonetturret",0,"hull_lab1",0,"hull_lab2",0,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",1,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",1,"towshackles",1,"fueldrums",1,"showext_fpe",1,"firstaid",1,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSIronFist",2];
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.60;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36],
      ["qav_challenger2","FV4034 Challenger 2 (Get Jinxed)",{
      [_this,["oliveblack",1],["camonethull",0,"camonetturret",0,"hull_lab1",1,"hull_lab2",0,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",1,"towshackles",1,"fueldrums",1,"showext_fpe",1,"firstaid",1,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSIronFist",2];
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.60;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36],
      ["qav_challenger2","FV4034 Challenger 2 (Anvil)",{
      [_this,["oliveblack",1],["camonethull",0,"camonetturret",0,"hull_lab1",0,"hull_lab2",0,"hull_lab3",1,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",1,"towshackles",1,"fueldrums",1,"showext_fpe",1,"firstaid",1,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSIronFist",2];
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.60;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36]
    ]],
    ["#Boxer",[
      ["adfrc_boxer_apc","",{
      [_this,nil,["towshackles",1,"towcable",1,"towbar",1,"storagebins",0,"leftstorage",1,"rightstorage",1,"tools",1,"duke",1,"nethull",0]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSTrophyMV",2];
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.45; 
      ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
      ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
      },[],30],
      ["adfrc_boxer_crv_late","",{
      [_this,nil,["leftstorage",1,"rightstorage",1,"tools",1,"towbar",1,"towshackles",1,"towcable",1,"duke",1,"storagebins",0,"nethull",0,"netturret",0,"netgun",0]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSTrophyMV",2];
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.45; 
      ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
      ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
      },[],30],
       ["adfrc_boxer_crv_b2","",{
      [_this,nil,["towbar",0,"towshackles",1,"towcable",1,"duke",1,"netturret",0,"netgun",0]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSTrophyMV",2];
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.45; 
      ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
      ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;
      },[],30]
    ]],
    ["#CVR",[
      ["cwr3_b_uk_fv107","FV107 Scimitar",{ 
      [_this,["Olive",1],true] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
      _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",1];
      _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_APDS",17];
      _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_HE",17];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],22],
      ["alvis_striker","",{
      [_this,["Olive",1], ["showTools",1,"showCamonetHull",0,"showBags",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.33;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],16]
    ]],
    ["#Anti-Air",[
      ["B_T_APC_Tracked_01_AA_F","",{
      [_this,["Olive",1],["showCamonetTurret",0,"showCamonetHull",0,"showBags",1]] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.33;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],22],
      ["alvis_stormer","",{
      [_this,["Olive",1], ["showTools",1,"showCamonetHull",0,"showBags",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.33;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],16]
    ]],
    ["#Transport",[
      ["UK3CB_BAF_FV432_Mk3_GPMG_Green","",{ 
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
      },[],24],
      ["UK3CB_BAF_FV432_Mk3_RWS_Green","",{ 
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
      },[],24],
      ["UK3CB_B_AAV_US_WDL","",{ 
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
      _this setFuel 0.33; 
      },[],28],
      ["UK3CB_BAF_Warrior_A3_W","FV510 Warrior",{
      [_this,["BAF_01",1],["showBags",0,"showBags2",1,"showCamonetHull",0,"showCamonetTurret",0,"showTools",1,"showSLATHull",0,"showSLATTurret",0]] call BIS_fnc_initVehicle;
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",1];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_APDS",17];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_HE",17];
        _this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Milan", 2]; 
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;  
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],28]
    ]]
 ]], 
 ["#Manoeuvre Support Vehicles (MSV) (FSG)",[ 
  ["UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_A","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",3]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],12], 
  ["UK3CB_BAF_LandRover_WMIK_Milan_FFR_Green_A","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Milan", 2];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],12], 
  ["UK3CB_BAF_Jackal2_L111A1_G","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6]; 
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",5]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],18], 
  ["UK3CB_BAF_Coyote_Passenger_L111A1_G","",{ 
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6]; 
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",5];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],22] 
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
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addItemCargoGlobal ["ACE_Fortify",1];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.50; 
   ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
   ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
   ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
   ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem; 
  },[],30] 
  ]],  
  ["UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_B","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",3];
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",4]; 
    _this addItemCargoGlobal ["ACE_Fortify",1];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this] remoteExec ["C5R_Common_fnc_attachRespawnActions", 0, true];
   _this setFuel 0.33; 
  },[],12], 
  ["rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd","",{ 
   [_this, ["rhs_woodland",1], ["hide_ogpkover",0,"hide_ogpknet",1,"hide_ogpkbust",0,"hide_spare",0,"FlagPole_pos",0]] call BIS_fnc_initVehicle;
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addItemCargoGlobal ["ACE_Fortify",1];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this, 24] call ace_cargo_fnc_setSpace;  
   [_this, 1200] remoteExec ["ace_refuel_fnc_makeSource",2];
   _this setFuel 0.50; 
  },[],32], 
  ["rhsusf_M978A4_BKIT_usarmy_wd","",{ 
   [_this, ["rhs_woodland",1], ["hide_ogpkover",0,"hide_ogpknet",1,"hide_ogpkbust",0,"hide_spare",0,"FlagPole_pos",0]] call BIS_fnc_initVehicle;
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addItemCargoGlobal ["ACE_Fortify",1];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this, 2] call ace_cargo_fnc_setSpace;
   _this setFuel 0.50; 
  },[],32], 
  ["UK3CB_BAF_MAN_HX58_Cargo_Green_A","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addItemCargoGlobal ["ACE_Fortify",1];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this, 2] call ace_cargo_fnc_setSpace;
   _this setFuel 0.50; 
  },[],32], 
  ["UK3CB_BAF_MAN_HX58_Transport_Green","",{ 
   [_this, ["Green",1], ["ClanLogo_Hide",1]] call BIS_fnc_initVehicle;
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addItemCargoGlobal ["ACE_Fortify",1];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this, 10] call ace_cargo_fnc_setSpace;  
   _this setFuel 0.50; 
   [_this] remoteExec ["C5R_Common_fnc_attachRespawnActions", 0, true]; 
  },[],26], 
  ["UK3CB_BAF_FV432_Mk3_GPMG_Green","",{ 
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.50; 
   ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
  },[],24], 
  ["UK3CB_BAF_FV432_Mk3_RWS_Green","",{ 
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.50; 
   ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
  },[],24],  
  ["UK3CB_BAF_Coyote_Logistics_L111A1_G","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory;
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6];
    _this addItemCargoGlobal ["ACE_Fortify",1];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
   _this setFuel 0.50; 
   [_this] remoteExec ["C5R_Common_fnc_attachRespawnActions", 0, true];
  },[],22], 
  ["UK3CB_BAF_Coyote_Passenger_L111A1_G",["","","With Repair"],{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6];
    _this addItemCargoGlobal ["ACE_Fortify",1];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.50; 
   _this setVariable ["ace_repair_canRepair", 1, true];
   [_this] remoteExec ["C5R_Common_fnc_attachRespawnActions", 0, true];
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
  ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
  _this setFuel 0.60;
  ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
  },[],36],
 ["B_crew_F","Vehicle Crewman",{ 
   _this setUnitLoadout (getUnitLoadout loadoutVehicleCrew) 
  },[],1] 
]];
C5R_SSSGroundSandArray = 
["#Ground - Sand",[
 ["#Protected Patrol Vehicles (PPV) (SECT)",[ 
  ["UK3CB_BAF_Husky_Passenger_GPMG_Sand","",{  
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],16], 
  ["UK3CB_B_MaxxPro_M2_US","",{ 
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   _this setFuel 0.33; 
  },[],16], 
  ["UK3CB_BAF_Panther_GPMG_Sand_A","",{ 
   ["fillPlt",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],16], 
  ["blx_ridgback_HMG_D","",{ 
   ["fillPlt",_this,true] call C5R_ItemCfg_fnc_initInventory;  
   _this setFuel 0.33;    
  },[],16] 
 ]], 
 ["#Combat Vehicles (CV) (KRH)",[ 
  ["#Challenger 2",[
      ["qav_challenger2","FV4034 Challenger 2 (Standard)",{
      [_this,["olivetan",1],["camonethull",0,"camonetturret",0,"hull_lab1",0,"hull_lab2",0,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",1,"iffpanels",0,"hulltowcable",1,"hulltowshackles",1,"towshackles",1,"fueldrums",1,"showext_fpe",1,"firstaid",1,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSIronFist",2];
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.60;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36],
      ["qav_challenger2","FV4034 Challenger 2 (Get Jinxed)",{
      [_this,["olivetan",1],["camonethull",0,"camonetturret",0,"hull_lab1",0,"hull_lab2",1,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",1,"towshackles",1,"fueldrums",1,"showext_fpe",1,"firstaid",1,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSIronFist",2];
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.60;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36],
       ["qav_challenger2","FV4034 Challenger 2 (Anvil)",{
      [_this,["olivetan",1],["camonethull",0,"camonetturret",0,"hull_lab1",0,"hull_lab2",0,"hull_lab3",0,"hull_lab4",1,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",1,"towshackles",1,"fueldrums",1,"showext_fpe",1,"firstaid",1,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSIronFist",2];
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.60;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36]
    ]],
    ["#CVR",[
      ["cwr3_b_uk_fv107","FV107 Scimitar",{ 
      [_this,["Desert",1],true] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",1];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_APDS",17];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_HE",17];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],22],
      ["alvis_striker","",{
      [_this,["Desert",1], ["showTools",1,"showCamonetHull",0,"showBags",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],16]
    ]],
    ["#Anti-Air",[
      ["B_T_APC_Tracked_01_AA_F","",{
      [_this,["Sand",1],["showCamonetTurret",0,"showCamonetHull",0,"showBags",1]] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.33;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],22],
      ["alvis_stormer","",{
      [_this,["Desert",1], ["showTools",1,"showCamonetHull",0,"showBags",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],16]
    ]],
    ["#Transport",[
      ["UK3CB_BAF_FV432_Mk3_GPMG_Sand","",{ 
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
      },[],24],
      ["UK3CB_BAF_FV432_Mk3_RWS_Sand","",{ 
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
      },[],24],
      ["UK3CB_B_AAV_US_DES","",{
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
      _this setFuel 0.33; 
      },[],28],
      ["UK3CB_BAF_Warrior_A3_D","FV510 Warrior",{
      [_this,["BAF_02",1],["showBags",0,"showBags2",1,"showCamonetHull",0,"showCamonetTurret",0,"showTools",1,"showSLATHull",0,"showSLATTurret",0]] call BIS_fnc_initVehicle;
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",1];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_APDS",17];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_HE",17];
        _this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Milan", 2]; 
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;  
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],28]
    ]]
 ]], 
 ["#Manoeuvre Support Vehicles (MSV) (FSG)",[ 
  ["UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",3]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],12], 
  ["UK3CB_BAF_LandRover_WMIK_Milan_FFR_Sand_A","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
    _this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Milan", 2];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],12], 
  ["UK3CB_BAF_Jackal2_L111A1_D","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6]; 
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",5]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],18], 
  ["UK3CB_BAF_Coyote_Passenger_L111A1_D","",{ 
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",4];
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6];
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.33; 
  },[],22] 
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
    ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
    [{_this getVariable "C5R_fillInventoryComplete" == true}, {
     _this addItemCargoGlobal ["ACE_Fortify",1]; 
    },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
    _this setFuel 0.50; 
    ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
    ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
    ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem;   
    ["ACE_Wheel", _this] call ace_cargo_fnc_loadItem; 
   },[],30] 
  ]], 
  ["UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",3]; 
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this] remoteExec ["C5R_Common_fnc_attachRespawnActions", 0, true];
   _this setFuel 0.33; 
  },[],12], 
  ["rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d","",{ 
   [_this, nil, ["hide_ogpkover",0,"hide_ogpknet",1,"hide_ogpkbust",0,"hide_spare",0,"FlagPole_pos",0]] call BIS_fnc_initVehicle;
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this, 24] call ace_cargo_fnc_setSpace;  
   [_this, 1200] remoteExec ["ace_refuel_fnc_makeSource",2];
   _this setFuel 0.50; 
  },[],32], 
  ["rhsusf_M978A4_BKIT_usarmy_d","",{ 
   [_this, ["Sand",1], ["ClanLogo_Hide",1]] call BIS_fnc_initVehicle;
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this, 2] call ace_cargo_fnc_setSpace;
   _this setFuel 0.50; 
  },[],32],  
  ["UK3CB_BAF_MAN_HX58_Cargo_Sand_A","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this, 2] call ace_cargo_fnc_setSpace;
   _this setFuel 0.50; 
  },[],32], 
  ["UK3CB_BAF_MAN_HX58_Transport_Sand","",{ 
   [_this, ["Sand",1], ["ClanLogo_Hide",1]] call BIS_fnc_initVehicle;
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   [_this, 10] call ace_cargo_fnc_setSpace;  
   _this setFuel 0.50; 
   [_this] remoteExec ["C5R_Common_fnc_attachRespawnActions", 0, true]; 
  },[],26], 
  ["UK3CB_BAF_FV432_Mk3_GPMG_Sand","",{ 
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3]; 
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute; 
   _this setFuel 0.50; 
   ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
  },[],24], 
  ["UK3CB_BAF_FV432_Mk3_RWS_Sand","",{ 
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.50; 
   ["ACE_Track", _this] call ace_cargo_fnc_loadItem; 
  },[],24], 
  ["UK3CB_BAF_Coyote_Logistics_L111A1_D","",{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6];
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.50; 
   [_this] remoteExec ["C5R_Common_fnc_attachRespawnActions", 0, true];
  },[],22], 
  ["UK3CB_BAF_Coyote_Passenger_L111A1_D",["","","With Repair"],{ 
   ["fillTeam",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [{_this getVariable "C5R_fillInventoryComplete" == true}, {
    _this addMagazineCargoGlobal ["UK3CB_BAF_762_200Rnd",3];
    _this addMagazineCargoGlobal ["UK3CB_BAF_127_100Rnd",6]; 
    _this addItemCargoGlobal ["ACE_Fortify",1]; 
   },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
   _this setFuel 0.50; 
   _this setVariable ["ace_repair_canRepair", 1, true];
   [_this] remoteExec ["C5R_Common_fnc_attachRespawnActions", 0, true];
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
  ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
  _this setFuel 0.60;
  ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
  },[],36],
 ["B_crew_F","Vehicle Crewman",{ 
   _this setUnitLoadout (C5R_loadouts get loadoutVehicleCrew);
   _this setSkill 1; 
  },[],1] 
]];
C5R_SSSGroundWinterArray = 
["#Ground - Winter",[
 ["#Combat Vehicles (CV) (KRH)",[ 
  ["#Challenger 2",[
      ["qav_challenger2","FV4034 Challenger 2 (Standard)",{
      [_this,["olive",1],["camonethull",0,"camonetturret",0,"hull_lab1",0,"hull_lab2",0,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",1,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",1,"towshackles",1,"fueldrums",1,"showext_fpe",1,"firstaid",1,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSIronFist",2];
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.60;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36],
      ["qav_challenger2","FV4034 Challenger 2 (Get Jinxed)",{
      [_this,["olive",1],["camonethull",0,"camonetturret",0,"hull_lab1",1,"hull_lab2",0,"hull_lab3",0,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",1,"towshackles",1,"fueldrums",1,"showext_fpe",1,"firstaid",1,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSIronFist",2];
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.60;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36],
       ["qav_challenger2","FV4034 Challenger 2 (Anvil)",{
      [_this,["olive",1],["camonethull",0,"camonetturret",0,"hull_lab1",0,"hull_lab2",0,"hull_lab3",1,"hull_lab4",0,"hull_lab5",0,"hull_lab6",0,"hull_lab7",0,"hull_lab8",0,"iffpanels",0,"hulltowcable",1,"hulltowshackles",1,"towshackles",1,"fueldrums",1,"showext_fpe",1,"firstaid",1,"wirewheel",1,"hulljerrys",1,"sparetracks",1]] call BIS_fnc_initVehicle;
      _this remoteExec ["DAPS_fnc_APSIronFist",2];
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",4];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.60;
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],36]
    ]],
    ["#CVR",[
      ["cwr3_b_uk_fv107","FV107 Scimitar",{ 
      [_this,["Winter",1],true] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",1];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_APDS",17];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_HE",17];
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],22],
      ["alvis_striker","",{
      [_this,["Winter",1], ["showTools",1,"showCamonetHull",0,"showBags",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],16]
    ]],
    ["#Anti-Air",[
      ["alvis_stormer","",{
      [_this,["Winter",1], ["showTools",1,"showCamonetHull",0,"showBags",1,"showSLATHull",0]] call BIS_fnc_initVehicle;
      ["fillAFV",_this,true] call C5R_ItemCfg_fnc_initInventory;
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;
      },[],16]
    ]],
    ["#Transport",[
      ["UK3CB_BAF_Warrior_A3_WI","FV510 Warrior",{
      [_this,["BAF_03",1],["showBags",0,"showBags2",1,"showCamonetHull",0,"showCamonetTurret",0,"showTools",1,"showSLATHull",0,"showSLATTurret",0]] call BIS_fnc_initVehicle;
      ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory; 
      [{_this getVariable "C5R_fillInventoryComplete" == true}, {
        _this addMagazineCargoGlobal ["UK3CB_BAF_762_800Rnd_T",1];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_APDS",17];
        _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_HE",17];
        _this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_Milan", 2]; 
      },_this,10,{diag_log format ["[C5R_SSS] Failed to add additional items to %1",_this];}] call CBA_fnc_waitUntilAndExecute;  
      _this setFuel 0.33; 
      ["ACE_Track", _this] call ace_cargo_fnc_loadItem;  
      },[],28]
    ]]
 ]]
]];

//////////////////////////////////////////////
// Supply boxes also needs to be listed in initPlayerLocal.sqf function "C5R_createLoadingActions"'s "_crates" array to be ViV loadable.
//////////////////////////////////////////////
C5R_SSSSuppliesArray = 
["#Supplies",[
 ["#Infantry Resupply",[ 
  ["B_CargoNet_01_ammo_F",["Infantry Resupply Crate","@resupply",""],{ 
  ["resupplycrate",_this,true] call C5R_ItemCfg_fnc_initInventory; 
   [_this, 6] call ace_cargo_fnc_setSize;  
  },[],4], 
  ["B_Slingload_01_Cargo_F",["Large Infantry Resupply Container","@resupply",""],{
   ["resupplycrate",_this,true] call C5R_ItemCfg_fnc_initInventory;
   ["resupplycrate",_this,false] call C5R_ItemCfg_fnc_initInventory;
   ["resupplycrate",_this,false] call C5R_ItemCfg_fnc_initInventory;
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
   ["resupply40mm",_this,true] call C5R_ItemCfg_fnc_initInventory; 
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
   ["resupplymedic",_this,true] call C5R_ItemCfg_fnc_initInventory; 
  },[],2], 
  ["Box_NATO_AmmoOrd_F",["Explosives Crate","",""],{ 
   ["resupplydemo",_this,true] call C5R_ItemCfg_fnc_initInventory;  
   [_this, 2] call ace_cargo_fnc_setSize;  
  },[],2], 
  ["Box_NATO_AmmoOrd_F",["M6 Light Mortar Ammo Crate","@resupply",""],{ 
   ["resupply60mm",_this,true] call C5R_ItemCfg_fnc_initInventory;  
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
    _this addMagazineCargoGlobal ["MRAWS_HEAT55_F", 14];
    _this addMagazineCargoGlobal ["MRAWS_HEAT_F", 8];
  },[],2], 
  ["Box_NATO_Equip_F","Night Box",{
   ["resupplyNight",_this,true] call C5R_ItemCfg_fnc_initInventory;  
  },[],3],
  ["Box_NATO_Equip_F","Toolbox",{
   ["resupplyToolbox",_this,true] call C5R_ItemCfg_fnc_initInventory;  
  },[],3],
  ["CargoNet_01_box_F","Field Arsenal (ELS USE ONLY, not loadable)",{
   clearWeaponCargoGlobal _this;
   clearMagazineCargoGlobal _this;
   clearItemCargoGlobal _this;
   clearBackpackCargoGlobal _this;
   [_this, -1] call ace_cargo_fnc_setSize;  
   [_this, C5R_arsenalItems, true] call ace_arsenal_fnc_initBox;
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
  /*["UK3CB_BAF_Box_Warrior_Ammo","",{
   clearWeaponCargoGlobal _this;   
   clearMagazineCargoGlobal _this;   
   clearItemCargoGlobal _this;
   clearBackpackCargoGlobal _this;   
   [_this,2400] remoteExec ["setMaxLoad",2];
   _this addItemCargoGlobal ["UK3CB_BAF_1Rnd_Milan",4];
   _this addItemCargoGlobal ["UK3CB_BAF_762_800Rnd_T",2];
   _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_APDS",9];
   _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_HE",9];
   [_this, 4] call ace_cargo_fnc_setSize; 
  },[],4],*/
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
  ["UK3CB_BAF_MAN_HX58_Container_ReArm",["Large Vehicle Rearm","@resupply","Non-ACE vehicle ammo"],{
   _this addItemCargoGlobal ["UK3CB_BAF_1Rnd_Milan",14];
   _this addItemCargoGlobal ["UK3CB_BAF_127_100Rnd",21];
   _this addItemCargoGlobal ["UK3CB_BAF_762_200Rnd_T",24];
   _this addItemCargoGlobal ["UK3CB_BAF_762_800Rnd_T",6];
   _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_APDS",27];
   _this addMagazineCargoGlobal ["UK3CB_BAF_6Rnd_30mm_L21A1_HE",27];
   [_this, 0] call ace_cargo_fnc_setSpace;
   [_this, -1] call ace_cargo_fnc_setSize;   
  },[],28], 
  ["UK3CB_BAF_MAN_HX58_Container_Sand",["Large Cargo Container","","Empty w/ 50 ACE Cargo"],{
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
  ["UK3CB_BAF_Box_L16_Ammo_Illumination",["","","17rnd"],{},[],2], 
  ["UK3CB_BAF_SupplyCrate_L16_Ammo_HE",["","","44rnd"],{},[],4], 
  ["UK3CB_BAF_SupplyCrate_L16_Ammo_Smoke",["","","44rnd"],{},[],4], 
  ["UK3CB_BAF_SupplyCrate_L16_Ammo_Illumination",["","","44rnd"],{},[],4] 
 ]],
 ["Land_Cargo10_military_green_F",["Radio Relay Container","","Indestructible. Needs to be deployed. 25km range"],{
  [_this, 0] call ace_cargo_fnc_setSpace;   
  [_this, -1] call ace_cargo_fnc_setSize;
 },[],28] 
]];

C5R_SSSNavyArray = 
["#Navy",[
 ["#Raiding Craft",[
  ["UK3CB_BAF_RHIB_HMG","",{
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
  },[],26],
  ["UK3CB_BAF_RHIB_GPMG","",{
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
  },[],26],
  ["UK3CB_MDF_B_RHIB_Gunboat","",{
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
  },[],26]
 ]],
 ["#Assault Boats",[
  ["rhsusf_mkvsoc","",{
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
  },[],100]/*,
  ["EF_B_CombatBoat_HMG_MJTF_Wdl","",{
   [_this,["MJTF",1],["armor_front",1,"armor_mid",1,"armor_rear",1,"mg2_turret_armor",1,"mg3_turret_armor",1,"mg4_turret_armor",1,"mg5_turret_armor",1]] call BIS_fnc_initVehicle;
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
  },[],75],
  ["EF_B_CombatBoat_AT_MJTF_Wdl","",{
   [_this,["MJTF",1],["armor_front",1,"armor_mid",1,"armor_rear",1,"mg2_turret_armor",1,"mg3_turret_armor",1,"mg4_turret_armor",1,"mg5_turret_armor",1]] call BIS_fnc_initVehicle;
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
  },[],75]
 ]],
 ["#Transport Craft",[
  ["EF_B_LCC_MJTF_Wdl","",{
   ["fillSection",_this,true] call C5R_ItemCfg_fnc_initInventory;
  },[],1000]*/
 ]]
]];