// This is a list for all operators available.
// Unfortunately necessary as I haven't yet found a way to simply execute all SQF in a folder with a single command.
// To use, simply add the FILE NAME of your operator (ex. kingsley.sqf) to the variable _allOperators.

_allOperators = ["ed","kingsley","fbi","wellwhy","try","beedle","krijger","candle"];

{
	_sqf = format ["operatorlist\operators\%1.sqf",_x];
	call compile preprocessFileLineNumbers _sqf;
} foreach _allOperators;