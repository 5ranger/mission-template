0 spawn {
	if ("5r_FreezeLayer" in (getMissionLayers)) then {
		sleep 10;
		private _5r_freezeLayerObjects = (getMissionLayerEntities "5r_FreezeLayer") select 0;
		{_x enableSimulationGlobal false;} forEach _5r_freezeLayerObjects;
		diag_log "[5r] Freezing all entities in ""5r_FreezeLayer""";
	};
};