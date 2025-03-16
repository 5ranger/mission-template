_actionDeploy = ["C5R_DeployRadioRelayAction","Deploy radio relay","",{
	[30, [_target], {
		params ["_args", "_elapsedTime", "_totalTime"];
   		_args params ["_target"];
		[_target] remoteExec ["C5R_Logistics_fnc_deployRadioRelay",2];
	}, {}, "Deploying radio relay..."] call ace_common_fnc_progressBar;
},{(!(_target getVariable ["C5R_relayActive",false])) && (isNull isVehicleCargo _target)}] call ace_interact_menu_fnc_createAction;
_actionPack = ["C5R_PackRadioRelayAction","Pack radio relay","",{
	[30, [_target], {
		params ["_args", "_elapsedTime", "_totalTime"];
   		_args params ["_target"];
		[_target] remoteExec ["C5R_Logistics_fnc_packRadioRelay",2];
	}, {}, "Packing radio relay..."] call ace_common_fnc_progressBar;
},{_target getVariable ["C5R_relayActive",false];}] call ace_interact_menu_fnc_createAction;
["Land_Cargo10_military_green_F", 0, ["ACE_MainActions"], _actionDeploy] call ace_interact_menu_fnc_addActionToClass;
["Land_Cargo10_military_green_F", 0, ["ACE_MainActions"], _actionPack] call ace_interact_menu_fnc_addActionToClass;