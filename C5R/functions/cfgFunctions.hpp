class C5R_Config
{
	class config 
	{
		file = "C5R\functions\config";
		class itemCfg {
			preInit	= 1;
		};
		class SSS {
			preInit	= 1;
		};
	};
};class C5R_itemCfg
{
	class server 
	{
		file = "C5R\functions\itemCfg\server";
		class initArsenals {};
		class initInventory {};
	};
};
class C5R_Common
{
	class client 
	{
		file = "C5R\functions\common\client";
		class attachMarkerGlobal {};
		class attachRespawnActions {};
		class brushCutter {};
		class createJ9Suite {};
		class createSpawnMarkerLocal {};
		class fixSlingHelmetExploit {};
		class fixZeus {};
		class movePlayerToSpawn {};
	};
	class server 
	{
		file = "C5R\functions\common\server";
		class attachMarkerServer {};
		class dynamicSimulation {};
		class freezeLayer {};
		class respawnAdd {};
		class respawnRemove {};
	};
};
class C5R_Logistics
{
	class client 
	{
		file = "C5R\functions\logistics\client";
		class addRadioRelayActions {};
		class createEmptyVehicle {};
		class createEmptyVehicleActions {};
		class createViVLoadingActions {};
	};
	class server 
	{
		file = "C5R\functions\logistics\server";
		class deployRadioRelay {};
		class packRadioRelay {};
	};
};
