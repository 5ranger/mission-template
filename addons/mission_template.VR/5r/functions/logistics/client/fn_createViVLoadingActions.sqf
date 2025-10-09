params ["_crates"];

_actionMain = ["x5r_actions_crateLoad","Load in closest vehicle (ViV)","",{
	_carrier = (nearestObjects [_target, ["Car","Air"], 30]) select 0;
	if (isNil "_carrier") then {hint "No vehicle found";exit;};
	_check = _carrier canVehicleCargo _target;
	_carrierNameStr = (getText (configFile >> "CfgVehicles" >> (typeOf _carrier) >> "displayName"));
	if (_check select 0) then {
		[10, [_target,_carrier], {
			params ["_args", "_elapsedTime", "_totalTime"];
   			_args params ["_target","_carrier"];
			_carrier setVehicleCargo _target;
		}, {}, format ["Loading cargo into %1...", _carrierNameStr]] call ace_common_fnc_progressBar;		
	}
	else {
		if (_check select 1) then {
			hint format ["%1\ndoesn't have enough free space to load the cargo\n\nLoading cargo in a different order might help", _carrierNameStr];
		} else {
			hint format ["%1's cargo area\nis too small to load this cargo", _carrierNameStr];
		};
	}; 
},{(isNull isVehicleCargo _target) && !(_target getVariable ["x5r_tags_vivDisabled",false])},{}] call ace_interact_menu_fnc_createAction;
{
	[_x, 0, ["ACE_MainActions"], _actionMain] call ace_interact_menu_fnc_addActionToClass;
} forEach _crates;
