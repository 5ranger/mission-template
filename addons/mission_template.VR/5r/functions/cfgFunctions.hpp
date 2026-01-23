class x5r_config
{
	class config 
	{
		file = "5r\functions\config";
		class itemCfg {
			preInit	= 1;
		};
		class vehicleCfg {
			preInit	= 1;
		};
	};
};
class x5r_common
{
	class client 
	{
		file = "5r\functions\common\client";
		class attachMarkerGlobal {};
		class attachRespawnActions {};
		class createJ9Suite {};
		class createSpawnMarkerLocal {};
		class fixSlingHelmetExploit {};
		class movePlayerToSpawn {};
		class pontoonBridgeAttachActions {};
		class pontoonBridgeObjectEH {};
		class respawnObjectsEH {};
		class brushCutter {};
		class suckNuts {};
		class toggleVehSectionFlagActions {};
	};
	class server 
	{
		file = "5r\functions\common\server";
		class attachMarkerServer {};
		class dynamicSimulation {};
		class freezeLayer {};
		class addRespawn {};
		class removeRespawn {};
		class pontoonBridgeCreateObject {};		
	};
};
class x5r_logistics
{
	class client 
	{
		file = "5r\functions\logistics\client";
		class addRadioRelayActions {};
		class createEmptyVehicle {};
		class createEmptyVehicleActions {};
		class createViVLoadingActions {};
	};
	class server 
	{
		file = "5r\functions\logistics\server";
		class deployRadioRelay {};
		class packRadioRelay {};
		
	};
	class shared
	{
		file = "5r\functions\logistics\shared";
		class initArsenal {};
		class initCargo {};
	};
};
