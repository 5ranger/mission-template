0 spawn {
	sleep 30;
	enableDynamicSimulationSystem false;
	diag_log "[C5R_DSS] Dynamic Simulation: DISABLED";
	["[C5R_DSS] Waiting 90s before enabling Dynamic Simulation..."] remoteExec ["systemChat"];
	sleep 90;
	enableDynamicSimulationSystem true;
	diag_log "[C5R_DSS] Dynamic Simulation: ENABLED";
	["[C5R_DSS] Dynamic Simulation: ENABLED"] remoteExec ["systemChat"];
};