[] spawn {
	private _initialDelay = 30;
	private _enableDelay = 90;

	sleep _initialDelay;
	enableDynamicSimulationSystem false;
	diag_log "Dynamic Simulation: Disabled";
	[format ["Dynamic Simulation will be enabled in %1 seconds...", _enableDelay]] remoteExec ["systemChat"];

	sleep _enableDelay;
	enableDynamicSimulationSystem true;
	diag_log "Dynamic Simulation: Enabled";
	["Dynamic Simulation: Enabled"] remoteExec ["systemChat"];
};
