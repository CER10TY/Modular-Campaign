/*
Author: tryteyker (last rev 2016-05-09)
Function to extract save names from Arsenal loadouts.
Please review 'gear_saving_readme.txt' in docs for further info on how BIS' Arsenal handles arsenal saving.

Parameters:
NOTHING

Returns:
0: ARRAY - Array of strings, save names
*/

_arsenalgear = profileNamespace getVariable ["BIS_fnc_saveInventory_data",[]];
_return = [];
if (count _arsenalGear == 0) exitWith {_return};

for "_i" from 0 to ((count _arsenalGear) - 1) do {
	_calcIndex = _i % 2; // Array length will always be even (in 0-index based terms). First loadout savename starts with 0, second with 2, etc. Meaning _i % 2 will always return 0 for savenames.
	if (_calcIndex == 0) then {
	_return = _return + [(_arsenalGear select _i)]; // Add savename to array
	};
};

_return 