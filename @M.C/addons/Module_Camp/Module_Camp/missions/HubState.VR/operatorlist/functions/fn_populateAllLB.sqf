/*
Author: tryteyker (last rev 2016-05-09)
Function to populate combobox / listbox elements in ARC_Operator_View. 
Called from ARC_Operator_View dialog_init.sqf

Parameters:
0: ARRAY - Combobox IDCs

Returns:
NOTHING
*/

/* common function header */
#include "..\..\arc_common.hpp"
/* common function header end */

private ["_idc","_operators","_sequence"];
_idc = OPERATOR_SELECT_CONTROLS;
_operators = profileNamespace getVariable ["operators",[]];

if (count _operators == 0) exitWith {};

_sequence = 0;

// Clear LB
for "_x" from 0 to 3 do {
	lbClear (_idc select _x);
};

for "_i" from 0 to (count _operators) - 1 do {
	private ["_name","_operatorName","_index"];
	_name = format ["%1_name", (_operators select _i)];
	_operatorName = profileNamespace getVariable _name; // Pull name prev defined in fn_addOperatorToNamespace
	_index = lbAdd [_idc select _sequence, _operatorName]; // Add string to lb
	lbSetData [_idc select _sequence, _index, (_operators select _i)]; // Add unique name (prev defined in fn_addOperatorToNamespace) to data value for later usage
	lbSetValue [_idc select _sequence, _index, _sequence]; // Add integer value for later usage (0-3 so we know what LB we're working with)
	if (_index == 0) then {
		lbSetCurSel [_idc select _sequence, _index]; // If newly added item is first, we select it (does not trigger any function calls, taken over by the .hpp instead thru lbselchanged EH)
	};
	_sequence = _sequence + 1;
	if (_sequence > 3) then {
		_sequence = 0; // Reset sequence - there's only 4 LBs so to guarantee even distribution we sequence the addition.
	};
};
