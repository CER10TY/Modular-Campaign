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
		};
		ctrlSetText [_buttonCtrl, "Save gear"];
		buttonSetAction [_buttonCtrl, "closeDialog 0; createDialog 'ARC_Operator_Gear_View'"];
		((findDisplay 5503) displayCtrl _buttonCtrl) ctrlSetTooltip format ["Save the gear of operator %1",_buttonClicked + 1];
	};
	case "save":
	{
		private [""];
		disableSerialization;
	};
};