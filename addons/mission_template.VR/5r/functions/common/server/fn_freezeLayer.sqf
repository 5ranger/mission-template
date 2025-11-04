[] spawn {
	if ("x5r_mission_freezeLayer" in getMissionLayers) then {
		sleep 10;
		private _x5r_mission_freezeLayerObjectArray = (getMissionLayerEntities "x5r_mission_freezeLayer") select 0;
		{_x enableSimulationGlobal false;} forEach _x5r_mission_freezeLayerObjectArray;
		diag_log "Freezing all entities in ""x5r_mission_freezeLayer""";
	};
};
