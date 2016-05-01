// Quick function to get and post TOD.
// By tryteyker
// Rev 1.0 date 2016-05-01

// Constants
_timeIDC = 1002;

// Loop
while {dialog} do {

_daytime = [daytime] call BIS_fnc_timeToString;
ctrlSetText [_timeIDC, _daytime];

};