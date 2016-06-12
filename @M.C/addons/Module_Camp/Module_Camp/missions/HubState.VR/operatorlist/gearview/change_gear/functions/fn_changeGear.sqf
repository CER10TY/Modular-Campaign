/*
Author: tryteyker (last rev 2016-05-09)
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
		_buttonClicked = (missionNamespace getVariable "gear_button_clicked") select 1; // Number ranging from 0 to 3 depending on what button was clicked.
		_buttonCtrl = ctrlIDC ((missionNamespace getVariable "gear_button_clicked") select 0); // Control name of button that was clicked. (ranging from Control #1603 to Control #1606)
		_currentOP = SELECT_VALUE(OPERATOR_SELECT_CONTROLS,_buttonClicked); // Macro defined in common.hpp, operator select combobox
		//hint format ["%1 - %2",ctrlType(DISPLAY(5503,_currentOP)),floor(random 50)]; // debug
		//DISPLAY(5503, _currentOP) ctrlEnable false; // This works only first time around - afterwards (presumably) dialog idd/control idc is not read correctly.
		ctrlEnable [_currentOP, false]; // fix? IT'S A FUCKING FIX HOLY SHIT 2 WEEKS AND IT'S FIXED BY USING ORIGINAL SYNTAX.
		_currentLB = SELECT_VALUE(OPERATOR_GEAR_SELECT_CTRL,_buttonClicked); // Gear listbox
		lbClear _currentLB;
		_savedLoadouts = call ARC_fnc_extractSavenames; // Extracts all savenames (strings only) from Arsenal (BIS_fnc_saveInventory_data) to populate LB. Returns array with strings.
		for "_i" from 0 to ((count _savedLoadouts) - 1) do { // Adds both string and data to relevant lb index, iterating through all saved loadouts.
			lbAdd [_currentLB,_savedLoadouts select _i];
			lbSetData [_currentLB, _i, _savedLoadouts select _i];
		};
		ctrlSetText [_buttonCtrl, "Save gear"];
		buttonSetAction [_buttonCtrl, "closeDialog 0; 'save' call ARC_fnc_changeGear"];
		DISPLAY(5503,_buttonCtrl) ctrlSetTooltip format ["Save the gear of operator %1",_buttonClicked + 1];
	};
	case "save":
	{
		private ["_ctrlLBList","_buttonClicked","_currentLB","_opList","_currentOP","_currentOperator","_selectedLoadout"];
		disableSerialization;
		_buttonClicked = (missionNamespace getVariable "gear_button_clicked") select 1; // Number ranging from 0 to 3 depending on what button was clicked.
		_currentLB = SELECT_VALUE(OPERATOR_GEAR_SELECT_CTRL,_buttonClicked); // Gear listbox
		_currentOP = SELECT_VALUE(OPERATOR_SELECT_CONTROLS,_buttonClicked); // Operator combobox
		_currentOperator = lbData [_currentOP, lbCurSel _currentOP]; // Operator
		_selectedLoadout = lbData [_currentLB, lbCurSel _currentLB];
		lbClear _currentLB; // Double clear for the lb, just for safety. It also gets cleared in fn_handleGear.
		[_selectedLoadout, _currentOperator, true] call ARC_fnc_handleDummyLoadout;
		createDialog 'ARC_Operator_Gear_View';
	};
};