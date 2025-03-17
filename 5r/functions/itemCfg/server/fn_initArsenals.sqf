// Add defined loadouts and arsenal to player arsenal objects
// set ACE default loadouts
{[(_x), (5r_loadouts get _x), true] call ace_arsenal_fnc_addDefaultLoadout;} forEach (keys 5r_loadouts); 
diag_log "[5r_Arsenal] Default loadouts added to arsenals";

// Init ACE Arsenal on all placed player arsenals
{[_x, 5r_arsenalItems, true] call ace_arsenal_fnc_initBox; } forEach 5r_allArsenals;
diag_log "[5r_Arsenal] Arsenals created";
