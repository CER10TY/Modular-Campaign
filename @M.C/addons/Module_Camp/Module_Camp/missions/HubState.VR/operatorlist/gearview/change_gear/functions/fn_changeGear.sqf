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

_param = param [0, "",[""]];
if (_param == "") exitWith {};

switch (_param) do {
	case "populate":
	{
		private ["_ctrlLBList","_opList","_buttonClicked","_buttonCtrl","_currentLB","_savedLoadouts"];
		disableSerialization;
		_ctrlLBList = [1500, 1501, 1502, 1503]; // Listboxes
		_opList = [2100, 2101, 2102, 2103]; // Comboboxes
		_buttonClicked = (missionNamespace getVariable "gear_button_clicked") select 1;
		_buttonCtrl = ctrlIDC ((missionNamespace getVariable "gear_button_clicked") select 0);
		((findDisplay 5503) displayCtrl (_opList select _buttonClicked)) ctrlRemoveAllEventHandlers "LBSelChanged";
		_currentLB = _ctrlLBList select _buttonClicked;
		lbClear _currentLB;
		_savedLoadouts = call ARC_fnc_extractSavenames;
		for "_i" from 0 to ((count _savedLoadouts) - 1) do {
			lbAdd [_currentLB,_savedLoadouts select _i];
			lbSetData [_currentLB, _i, _savedLoadouts select _i];
		};
		ctrlSetText [_buttonCtrl, "Save gear"];
		buttonSetAction [_buttonCtrl, "closeDialog 0; 'save' call ARC_fnc_changeGear"];
		((findDisplay 5503) displayCtrl _buttonCtrl) ctrlSetTooltip format ["Save the gear of operator %1",_buttonClicked + 1];
	};
	case "save":
	{
		private ["_ctrlLBList","_buttonClicked","_currentLB","_opList","_currentOpList","_currentOperator","_selectedLoadout"];
		disableSerialization;
		_ctrlLBList = [1500, 1501, 1502, 1503]; // Listboxes
		_opList = [2100, 2101, 2102, 2103]; // Comboboxes
		_buttonClicked = (missionNamespace getVariable "gear_button_clicked") select 1;
		_currentLB = _ctrlLBList select _buttonClicked; // Gear listbox
		_currentOpList = _opList select _buttonClicked;
		_currentOperator = lbData [_currentOpList, lbCurSel _currentOpList]; // Operator
		_selectedLoadout = lbData [_currentLB, lbCurSel _currentLB];
		hint format ["OP: %1 Loadout: %2",_currentOperator, _selectedLoadout];
		lbClear _currentLB; // Double clear for the lb, just for safety. It also gets cleared in fn_handleGear.
		[_selectedLoadout, _currentOperator, true] call ARC_fnc_handleDummyLoadout;
		createDialog 'ARC_Operator_Gear_View';
	};
};