0 spawn {
	sleep 30;
	enableDynamicSimulationSystem false;
	diag_log "[5r_DSS] Dynamic simulation: disabled";
	["[5r_DSS] Sleeping before enabling dynamic simulation"] remoteExec ["systemChat"];
	sleep 90;
	enableDynamicSimulationSystem true;
	diag_log "[5r_DSS] Dynamic simulation: enabled";
	["[5r_DSS] Dynamic simulation: enabled"] remoteExec ["systemChat"];
};