private _allowedMissions = 
[
	"mission_template", 
	"5r_mission_training",
	"5r_mission_iutr_medical_amb_xing"
];
private _switchWhitelist = 
[
	"_SP_PLAYER_", // SP DEBUG
	// J0
	"76561198047545378", // Gibs
	"76561198260382746", // Alex
    "76561198002451746", // Gibby
    "76561198278066209", // Duck
	// J3
	"76561198087772624", // Ammo
    "76561198148791393", // OkiJay
	"76561198795885301", // Tikkers
	"76561198292567385", // Thor
	"76561198102693136", // Shepard
    "76561198030920498", // Hazardous
    "76561198141409958", // Max
    "76561198009107590", // Henri
	"76561198334855804", // Bep
	"76561198840076161", // Ellis
	// J6
	"76561197965400858", // Cathode
    "76561198361914331", // Deadly
    "76561198107304737", // Preston
	// J7
	"76561198128970759", // Amelia
    "76561198147444609", // J
	"76561198145649863" // Lucy
];
private _uid = (getPlayerUID player);
if ((_uid in _switchWhitelist) && (missionName in _allowedMissions)) then 
{
	with uiNamespace do {
		waitUntil {!isNull findDisplay 12};
		disableSerialization;
		_ctrl = findDisplay 12 ctrlCreate ["x5r_iconButton", -1];
		_ctrl ctrlSetPosition [safeZoneX + 0.30 * safeZoneW, safeZoneY];
		_ctrl ctrlSetText "\A3\Ui_f\data\IGUI\cfg\actions\obsolete\ui_action_teamswitch_ca.paa";
		_ctrl ctrlAddEventHandler ["MouseButtonClick", {
			if (!isNull findDisplay 12) then {openMap [false, false];};
			createDialog "x5r_missionSwitchDialog";
		}];
		_ctrl ctrlCommit 0;
	};
};
