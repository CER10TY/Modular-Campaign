/*
Author: tryteyker (last rev 2016-05-04)
Function to handle gear listbox UI in ARC_Operator_Gear_View.
Called from EH "LBSelChanged".

Parameters:
0: CONTROL - Control of listbox
1: NUMBER - New element index

Returns:
NOTHING
*/

/* common function header */
#include "..\..\..\arc_common.hpp"
/* common function header end */

private ["_ctrlLB","_index","_ctrlLBList","_operator","_containers","_weapons","_currentLB","_forIndex"];

_ctrlLB = param [0, controlNull, [controlNull]];
_index = param [1, 0, [0]];

if (isNull _ctrlLB) exitWith {};
_operator = _ctrlLB lbData _index;
_containers = profileNamespace getVariable (format ["%1_gear_containers",_operator]);
_weapons = profileNamespace getVariable (format ["%1_gear_weapons",_operator]);

_currentLB = SELECT_VALUE(OPERATOR_GEAR_SELECT_CTRL,(_ctrlLB lbValue _index));
//hint format ["Current LB: %1 + %2",_currentLB, floor(random 50)];
lbClear _currentLB;

_forIndex = 0;
{
	private ["_container","_items","_configEntry"];
	_container = _x select 0;
	_items = _x select 1;
	if (_container == "") exitWith {};
	_configEntry = [_container] call ARC_fnc_getConfigEntry;
	if (_configEntry == "CfgAmmo") exitWith {};
	lbAdd [_currentLB, getText(configFile >> _configEntry >> _container >> "displayName")];
	lbSetPicture [_currentLB, _forIndex, getText(configFile >> _configEntry >> _container >> "picture")];
	lbSetTooltip [_currentLB, _forIndex, getText(configFile >> _configEntry >> _container >> "displayName")];
	_forIndex = _forIndex + 1;
		{
			private "_configEntry";
			if (_x == "") exitWith {};
			_configEntry = [_x] call ARC_fnc_getConfigEntry;
			if (_configEntry == "CfgAmmo") exitWith {}; // Can't support smoke shells, chemlights yet because they don't have a displayName or picture param for some reason.
			lbAdd [_currentLB, format ["- %1",getText(configFile >> _configEntry >> _x >> "displayName")]];
			lbSetTooltip [_currentLB, _forIndex, getText(configFile >> _configEntry >> _x >> "displayName")];
			lbSetPicture [_currentLB, _forIndex, getText(configFile >> _configEntry >> _x >> "picture")];
			_forIndex = _forIndex + 1;
		} foreach _items;
} foreach _containers;

{
	private ["_weapon","_attachments","_configEntry"];
	_weapon = _x select 0;
	if (_weapon == "") exitWith {}; // Unnecessary to add nothing.
	_attachments = _x select 1;
	_configEntry = [_weapon] call ARC_fnc_getConfigEntry;
	lbAdd [_currentLB, getText(configFile >> _configEntry >> _weapon >> "displayName")];
	lbSetPicture [_currentLB, _forIndex, getText(configFile >> _configEntry >> _weapon >> "picture")];
	lbSetTooltip [_currentLB, _forIndex, getText(configFile >> _configEntry >> _weapon >> "displayName")];
	_forIndex = _forIndex + 1;
		{
			private "_configEntry";
			if (_x == "") exitWith {}; // Unnecessary to add nothing.
			_configEntry = [_x] call ARC_fnc_getConfigEntry;
			lbAdd [_currentLB, format ["- %1",getText(configFile >> _configEntry >> _x >> "displayName")]];
			lbSetTooltip [_currentLB, _forIndex, getText(configFile >> _configEntry >> _x >> "displayName")];
			lbSetPicture [_currentLB, _forIndex, getText(configFile >> _configEntry >> _x >> "picture")];
			_forIndex = _forIndex + 1;
		} foreach _attachments;
} foreach _weapons;