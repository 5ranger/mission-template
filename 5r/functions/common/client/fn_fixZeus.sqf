_5r_zeusSlots = ["pZeus_1","pZeus_2","pZeus_3","pZeus_4","pZeus_5","pZeus_6","pZeus_7","pZeus_8"];
if ((vehicleVarName player) in _5r_zeusSlots) then {
	with uiNamespace do {
		waitUntil {!isNull findDisplay 12};
		disableSerialization;
		_ctrl3 = findDisplay 12 ctrlCreate ["RscStructuredText", -1];
		_ctrl3 ctrlSetPosition [safezoneX + 0.7 * safezoneW, safezoneY, 0.05 * safezoneW, 0.02 * safezoneH];
		_ctrl3 ctrlSetStructuredText parseText "FIX ZEUS <img size='1.2' image='a3\ui_f_curator\data\logos\arma3_zeus_icon_ca.paa'/>";
		_ctrl3 ctrlSetTextColor [0.9, 0.9, 0.9, 1];
		_ctrl3 ctrlSetBackgroundColor [0.1, 0.1, 0.1, 0.9];
		_ctrl3 ctrlAddEventHandler ["MouseButtonClick", {
			if (player == pZeus_1) then {[pZeus_1,mZeus_1] remoteExec ["assignCurator", 2]};
			if (player == pZeus_2) then {[pZeus_2,mZeus_2] remoteExec ["assignCurator", 2]};
			if (player == pZeus_3) then {[pZeus_3,mZeus_3] remoteExec ["assignCurator", 2]};
			if (player == pZeus_4) then {[pZeus_4,mZeus_4] remoteExec ["assignCurator", 2]};
			if (player == pZeus_5) then {[pZeus_5,mZeus_5] remoteExec ["assignCurator", 2]};
			if (player == pZeus_6) then {[pZeus_6,mZeus_6] remoteExec ["assignCurator", 2]};
			if (player == pZeus_7) then {[pZeus_7,mZeus_7] remoteExec ["assignCurator", 2]};
			if (player == pZeus_8) then {[pZeus_8,mZeus_8] remoteExec ["assignCurator", 2]};
		}];
	_ctrl3 ctrlCommit 0;
	};
};