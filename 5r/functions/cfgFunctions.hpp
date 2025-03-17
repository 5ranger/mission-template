class 5r_itemCfg
{
	class server 
	{
		file = "5r\functions\itemCfg\server";
		class initArsenals {};
		class initInventory {};
	};
};
class 5r_common
{
	class client 
	{
		file = "5r\functions\common\client";
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
		file = "5r\functions\common\server";
		class attachMarkerServer {};
		class dynamicSimulation {};
		class freezeLayer {};
		class respawnAdd {};
		class respawnRemove {};
	};
};
class 5r_Logistics
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
};
