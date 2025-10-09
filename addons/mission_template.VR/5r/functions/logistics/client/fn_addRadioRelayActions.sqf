
private _className = "Land_Cargo10_military_green_F";
private _actionDeploy = [
	"x5r_actions_radioRelayDeploy",
	"Deploy radio relay",
	"",
	{
		[30, [_target], {
			params ["_args", "_elapsedTime", "_totalTime"];
			_args params ["_target"];
			[_target] remoteExec ["x5r_logistics_fnc_deployRadioRelay", 2];
		}, {}, "Deploying radio relay..."] call ace_common_fnc_progressBar;
	},
	{
		!(_target getVariable ["x5r_tags_relayActive", false]) && { isNull isVehicleCargo _target }
	}
] call ace_interact_menu_fnc_createAction;

private _actionPack = [
	"x5r_actions_radioRelayPack",
	"Pack radio relay",
	"",
	{
		[30, [_target], {
			params ["_args", "_elapsedTime", "_totalTime"];
			_args params ["_target"];
			[_target] remoteExec ["x5r_logistics_fnc_packRadioRelay", 2];
		}, {}, "Packing radio relay..."] call ace_common_fnc_progressBar;
	},
	{
		_target getVariable ["x5r_tags_relayActive", false]
	}
] call ace_interact_menu_fnc_createAction;

[_className, 0, ["ACE_MainActions"], _actionDeploy] call ace_interact_menu_fnc_addActionToClass;
[_className, 0, ["ACE_MainActions"], _actionPack] call ace_interact_menu_fnc_addActionToClass;
