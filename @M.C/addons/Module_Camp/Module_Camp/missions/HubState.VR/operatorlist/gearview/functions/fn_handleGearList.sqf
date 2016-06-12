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

// Vars from namespace
_operator = _ctrlLB lbData _index;
_containers = profileNamespace getVariable (format ["%1_gear_containers",_operator]);
_weapons = profileNamespace getVariable (format ["%1_gear_weapons",_operator]);

_currentLB = SELECT_VALUE(OPERATOR_GEAR_SELECT_CTRL,(_ctrlLB lbValue _index));
lbClear _currentLB;

_forIndex = 0; // I found a custom variable to be more reliable than _forEachIndex (don't ask me why, because technically both should result in the same since _forIndex isn't sequenced or anything)
{
	private ["_container","_items","_configEntry"];
	_container = _x select 0; // Selects uniform, vest, or backpack
	_items = _x select 1; // Selects items in uniform, vest, or backpack.
	if (_container == "") exitWith {};
	_configEntry = [_container] call ARC_fnc_getConfigEntry; // Gets config name (ie CfgVehicles) for class name.
	if (_configEntry == "CfgAmmo") exitWith {}; // Can't support smoke shells, chemlights yet because they don't have a displayName or picture param for some reason.
	lbAdd [_currentLB, getText(configFile >> _configEntry >> _container >> "displayName")]; // Add displayName of uniform, vest or backpack.
	lbSetPicture [_currentLB, _forIndex, getText(configFile >> _configEntry >> _container >> "picture")]; // Picture
	lbSetTooltip [_currentLB, _forIndex, getText(configFile >> _configEntry >> _container >> "displayName")]; // Tooltip is also displayName
	_forIndex = _forIndex + 1;
		{
			private "_configEntry";
			if (_x == "") exitWith {};
			_configEntry = [_x] call ARC_fnc_getConfigEntry;
			if (_configEntry == "CfgAmmo") exitWith {}; // Can't support smoke shells, chemlights yet because they don't have a displayName or picture param for some reason.
			lbAdd [_currentLB, format ["- %1",getText(configFile >> _configEntry >> _x >> "displayName")]]; // Add displayName of item with a '-' prefix to note that it is an item inside uniform/vest/backpack.
			lbSetPicture [_currentLB, _forIndex, getText(configFile >> _configEntry >> _x >> "picture")];
			lbSetTooltip [_currentLB, _forIndex, getText(configFile >> _configEntry >> _x >> "displayName")];
			_forIndex = _forIndex + 1;
		} foreach _items;
} foreach _containers;

{
	private ["_weapon","_attachments","_configEntry"];
	_weapon = _x select 0; // Actual weapon
	if (_weapon == "") exitWith {}; // Unnecessary to add nothing.
	_attachments = _x select 1; // Weapon attachments (does not include magazine name)
	_configEntry = [_weapon] call ARC_fnc_getConfigEntry; // Get config name
	lbAdd [_currentLB, getText(configFile >> _configEntry >> _weapon >> "displayName")]; // Add displayName
	lbSetPicture [_currentLB, _forIndex, getText(configFile >> _configEntry >> _weapon >> "picture")];
	lbSetTooltip [_currentLB, _forIndex, getText(configFile >> _configEntry >> _weapon >> "displayName")]; // May be changed to magazine name in the future.
	_forIndex = _forIndex + 1;
		{
			private "_configEntry";
			if (_x == "") exitWith {}; // Unnecessary to add nothing.
			_configEntry = [_x] call ARC_fnc_getConfigEntry; // Get config name of attachments' parent config.
			lbAdd [_currentLB, format ["- %1",getText(configFile >> _configEntry >> _x >> "displayName")]];
			lbSetTooltip [_currentLB, _forIndex, getText(configFile >> _configEntry >> _x >> "displayName")];
			lbSetPicture [_currentLB, _forIndex, getText(configFile >> _configEntry >> _x >> "picture")];
			_forIndex = _forIndex + 1;
		} foreach _attachments;
} foreach _weapons;