/*
Author: tryteyker (last rev 2016-05-04)
Function to populate listbox with all saved arsenal loadouts. Only changes selected operators' listbox, rest remains untouched.
Also saves gear once button is pressed.

Parameters:
0: STRING - argument to decide what function does.
	"populate" - Populate listbox with saved arsenal loadouts.
	"save" - Save gear using ARC_fnc_handleDummyLoadout.

Returns:
NOTHING
*/

/* common function header */
#include "..\..\..\..\arc_common.hpp"
/* common function header end */

_param = param [0, "",[""]];
if (_param == "") exitWith {};

switch (_param) do {
	case "populate":
	{
		private ["_ctrlLBList","_opList","_buttonClicked","_buttonCtrl","_currentLB","_savedLoadouts"];
		disableSerialization;
		_buttonClicked = (missionNamespace getVariable "gear_button_clicked") select 1;
		_buttonCtrl = ctrlIDC ((missionNamespace getVariable "gear_button_clicked") select 0);
		_currentOP = SELECT_VALUE(OPERATOR_SELECT_CONTROLS,_buttonClicked);
		DISPLAY(5503, _currentOP) ctrlRemoveAllEventHandlers "LBSelChanged"; // Some effect? But not second runtime.
		_currentLB = SELECT_VALUE(OPERATOR_GEAR_SELECT_CTRL,_buttonClicked);
		lbClear _currentLB;
		_savedLoadouts = call ARC_fnc_extractSavenames;
		for "_i" from 0 to ((count _savedLoadouts) - 1) do {
			lbAdd [_currentLB,_savedLoadouts select _i];
			lbSetData [_currentLB, _i, _savedLoadouts select _i];
		};
		ctrlSetText [_buttonCtrl, "Save gear"];
		buttonSetAction [_buttonCtrl, "closeDialog 0; 'save' call ARC_fnc_changeGear"];
		DISPLAY(5503,_buttonCtrl) ctrlSetTooltip format ["Save the gear of operator %1",_buttonClicked + 1];
	};
	case "save":
	{
		private ["_ctrlLBList","_buttonClicked","_currentLB","_opList","_currentOpList","_currentOperator","_selectedLoadout"];
		disableSerialization;
		_buttonClicked = (missionNamespace getVariable "gear_button_clicked") select 1;
		_currentLB = SELECT_VALUE(OPERATOR_GEAR_SELECT_CTRL,_buttonClicked); // Gear listbox
		_currentOpList = SELECT_VALUE(OPERATOR_SELECT_CONTROLS,_buttonClicked);
		_currentOperator = lbData [_currentOpList, lbCurSel _currentOpList]; // Operator
		_selectedLoadout = lbData [_currentLB, lbCurSel _currentLB];
		lbClear _currentLB; // Double clear for the lb, just for safety. It also gets cleared in fn_handleGear.
		[_selectedLoadout, _currentOperator, true] call ARC_fnc_handleDummyLoadout;
		createDialog 'ARC_Operator_Gear_View';
	};
};