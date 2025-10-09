params [];

private _animation = "AmovPercMstpSnonWnonDnon_exerciseKata";
private _animationReset = "AmovPercMstpSnonWnonDnon";
private _animationSpeed = 4.5;
private _velocity = [10, 25, 10];
private _sfx = getMissionPath "5r\sfx\skibidi.ogg";

["Critical Warning - Cringe protocol activated."] remoteExec ["systemChat", -12, false];
["Critical Warning - Cringe protocol activated."] remoteExec ["diag_log", -12, true];

{
	if (isPlayer _x || { !isNull (group _x) && { alive _x && { !(_x isKindOf "LandVehicle") && !(_x isKindOf "Air") && !(_x isKindOf "Ship") } } }) then {
		[_x, "AsianHead_A3_02"] remoteExec ["setFace", _x];
		[_x, ""] remoteExec ["forceAddUniform", _x];
		[_sfx, _x] remoteExec ["playSound3D", _x];

		[_x, _animationSpeed] remoteExec ["setAnimSpeedCoef", _x];
		[_x, _animation] remoteExec ["playMoveNow", _x];
		[_x, _velocity] remoteExec ["setVelocity", _x];
	};
} forEach allUnits;

// After a delay, revert the player's animation (if possible)
[] spawn {
	private _messages = [
		"Skibidi Skibidi Hawk Tuah Hawk..",
		"Skibidi King who gives out blumpkins..",
		"Edging and gooning and learning to munt...",
		"Dripping cheese all over my lunch..",
		"Skibidi Skibidi Hawk Tuah Hawk..",
		"Skibidi Boom or Skibidi Doom..",
		"Edging and gooning in Ohio square..",
		"Stinky backshot air!~"
	];
	{
		sleep 2;
		systemChat _x;
	} forEach _messages;

	sleep 30;

	[1.0] remoteExec ["setAnimSpeedCoef", -2, false];
	[_animationReset] remoteExec ["playMoveNow", -2, false];

	["Critical Warning - Cringe protocol deactivated."] remoteExec ["systemChat", -2, false];
	["Critical Warning - Cringe protocol deactivated."] remoteExec ["diag_log", -2, true];
};