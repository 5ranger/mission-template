0 spawn {
	if ("C5R_FreezeLayer" in (getMissionLayers)) then {
		sleep 10;
		private _C5R_freezeLayerObjects = (getMissionLayerEntities "C5R_FreezeLayer") select 0;
		{_x enableSimulationGlobal false;} forEach _C5R_freezeLayerObjects;
		diag_log "[C5R] Freezing all entities in ""C5R_FreezeLayer""";
	};
};