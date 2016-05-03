/*
Author: tryteyker (last rev 2016-05-03)
Function to populate combobox / listbox elements in ARC_Operator_View. 
Called from ARC_Operator_View dialog_init.sqf

Parameters:
0: ARRAY - Combobox IDCs

Returns:
NOTHING
*/
private ["_idc","_operators","_lb1Count","_lb2Count","_lb3Count","_lb4Count"];
_idc = param [0, [], []];
_operators = profileNamespace getVariable ["operators",[]];

if (count _operators == 0) exitWith {ctrlSetText [1005, "ERROR: UNABLE TO LOAD OPS!"]};

_sequence = 0;

for "_i" from 0 to (count _operators) - 1 do {
	_name = format ["%1_name", (_operators select _i)];
	_operatorName = profileNamespace getVariable _name;
	_index = lbAdd [_idc select _sequence, _operatorName];
	if (_index == 0) then {
		lbSetCurSel [_idc select _sequence, _index];
	};
	_sequence = _sequence + 1;
	if (_sequence > 3) then {
		_sequence = 0;
	};
};
