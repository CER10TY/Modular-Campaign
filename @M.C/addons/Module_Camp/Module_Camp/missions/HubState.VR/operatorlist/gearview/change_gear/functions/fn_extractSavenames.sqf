/*
Author: tryteyker (last rev 2016-05-05)
Function to extract save names from Arsenal loadouts.
Please review 'gear_saving_readme.txt' in docs for further info on how BIS' Arsenal handles arsenal saving.
Uses modulus 2 to extract save names (array length will never be uneven, as save name is 1 count with gear being the second).

Parameters:
NOTHING

Returns:
0: ARRAY - Array of strings, save names
*/

_arsenalgear = profileNamespace getVariable ["BIS_fnc_saveInventory_data",[]];
_return = [];
if (count _arsenalGear == 0) exitWith {_return};

for "_i" from 0 to ((count _arsenalGear) - 1) do {
	_calcIndex = _i % 2;
	if (_calcIndex == 0) then {
	_return = _return + [(_arsenalGear select _i)];
	};
};

_return 