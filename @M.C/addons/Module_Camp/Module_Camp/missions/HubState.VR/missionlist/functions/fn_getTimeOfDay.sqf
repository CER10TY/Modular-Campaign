// Quick function to get and post TOD.
// By tryteyker
// Last rev date 2016-05-09

// Constants
_timeIDC = 1002;

// Loop
while {dialog} do {

_daytime = [daytime] call BIS_fnc_timeToString; // Continously update current time of day.
ctrlSetText [_timeIDC, _daytime];

};