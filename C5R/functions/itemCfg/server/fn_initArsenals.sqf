// Add defined loadouts and arsenal to player arsenal objects
{[(_x), (C5R_loadouts get _x), true] call ace_arsenal_fnc_addDefaultLoadout;} forEach (keys C5R_loadouts); // set ACE default loadouts
diag_log "[C5R_Arsenal] Default Loadouts added to arsenals";
{[_x, C5R_arsenalItems, true] call ace_arsenal_fnc_initBox; } forEach C5R_allArsenals; // Init ACE Arsenal on all placed player arsenals
diag_log "[C5R_Arsenal] Arsenals created";
