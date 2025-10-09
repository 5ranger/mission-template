// Add access to spectator and gcam from the map screen for players in passed array of steamID64
params ["_spectWhitelist"];
diag_log format ["Loaded spectator whitelist: %1", _spectWhitelist];
private _uid = (getPlayerUID player);
if (_uid in _spectWhitelist) then 
{
	// Add spectator button
	with uiNamespace do {
		waitUntil {!isNull findDisplay 12};
		disableSerialization;
		_ctrl = findDisplay 12 ctrlCreate ["RscStructuredText", -1];
		_ctrl ctrlSetPosition [safezoneX + 0.51 * safezoneW, safezoneY, 0.02 * safezoneW, 0.02 * safezoneH];
		_ctrl ctrlSetStructuredText parseText "<img size='1.2' image='\A3\Ui_f\data\GUI\Rsc\RscDisplayEGSpectator\FreeSelected.paa'/>";
		_ctrl ctrlSetTextColor [0.9, 0.9, 0.9, 1];
		_ctrl ctrlSetBackgroundColor [0.1, 0.1, 0.1, 0.9];
		_ctrl ctrlAddEventHandler ["MouseButtonClick", {
			["Initialize", [player, [], false, true, false, false, false, true, false, false]] call BIS_fnc_EGSpectator;
			[] spawn {
				waitUntil {!isNull findDisplay 49};
				["Terminate"] call BIS_fnc_EGSpectator;
			};
		}];
_ctrl ctrlCommit 0;
	};
	// Add gcam button
	with uiNamespace do {
		waitUntil {!isNull findDisplay 12};
		disableSerialization;
		_ctrl2 = findDisplay 12 ctrlCreate ["RscStructuredText", -1];
		_ctrl2 ctrlSetPosition [safezoneX + 0.49 * safezoneW, safezoneY, 0.02 * safezoneW, 0.02 * safezoneH];
		_ctrl2 ctrlSetStructuredText parseText "<img size='1.2' image='\a3\modules_f_curator\data\portraitcuratorsetcamera_ca.paa'/>";
		_ctrl2 ctrlSetTextColor [0.9, 0.9, 0.9, 1];
		_ctrl2 ctrlSetBackgroundColor [0.1, 0.1, 0.1, 0.9];
		_ctrl2 ctrlAddEventHandler ["MouseButtonClick", {
 			showChat false;
			execVM "gcam\gcam.sqf"; 
		}];
	_ctrl2 ctrlCommit 0;
	};
diag_log format ["Spectate buttons created for %1", player];
};
