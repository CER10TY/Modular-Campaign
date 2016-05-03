/*
Author: tryteyker (last rev 2016-05-04)
Function to handle gear listbox UI in ARC_Operator_Gear_View.
Called from ARC_Operator_Gear_View dialog_init.sqf

Parameters:
0: CONTROL - Control of listbox
1: NUMBER - New element index

Returns:
NOTHING
*/

private ["_ctrlLB","_index","_ctrlLBList"];

_ctrlLB = param [0, controlNull, [controlNull]];
_index = param [1, 0, [0]];

_ctrlLBList = [1500, 1501, 1502, 1503];

if (isNull _ctrlLB) exitWith {};
_operator = _ctrlLB lbData _index;
_gear = profileNamespace getVariable (format ["%1_gear",_operator]);