/*
Author: tryteyker (last rev 2016-05-24)

Function to handle stats view of individual operators.

Parameters:
0: CONTROL - Control of listbox
1: NUMBER - New element index

Returns:
NOTHING
*/

/* common function header */
#include "..\..\..\arc_common.hpp"
/* common function header end */

private ["_ctrlLB","_index","_allStats","_currentLB","_operator","_sliderIndex"];

_ctrlLB = param [0, controlNull, [controlNull]];
_index = param [1, 0, [0]];
_sliderIndex = 0;

if (isNull _ctrlLB) exitWith {};

// Namespace stuff
_operator = _ctrlLB lbData _index;
_allStats = ["aimingAccuracy","aimingShake","aimingSpeed","endurance","spotDistance","spotTime","courage","reloadSpeed","commanding","general"];

_currentLB = SELECT_VALUE(OPERATOR_GEAR_SELECT_CTRL,(_ctrlLB lbValue _index));
lbClear _currentLB;

switch _currentLB do {
	case 1500:
	{
		_sliderIndex = 0;
	};
	case 1501:
	{
		_sliderIndex = 1;
	};
	case 1502:
	{
		_sliderIndex = 2;
	};
	case 1503:
	{
		_sliderIndex = 3;
	};
};

{
	private ["_currentStat","_index","_toolTip","_stat"];
	
	_currentStat = profileNamespace getVariable (format ["%1_%2",_operator,_x]);
	_toolTip = "";
	_stat = "";
	switch _x do { // Feels dirty as all hell but for now it's good enough I guess
		case "aimingAccuracy":
		{
			_stat = "Aiming Accuracy";
			_toolTip = "This determines the aiming accuracy of the operator when firing a weapon.";
		};
		case "aimingShake":
		{
			_stat = "Aiming Shake";
			_toolTip = "This determines how steady the operator fires a weapon.";
		};
		case "aimingSpeed":
		{
			_stat = "Aiming Speed";
			_toolTip = "This determines how fast the operator can aim at a target.";
		};
		case "endurance":
		{
			_stat = "Endurance";
			_toolTip = "This determines how long the operator can jog or sprint.";
		};
		case "spotDistance":
		{
			_stat = "Spot Distance";
			_toolTip = "This determines how far away the operator can spot targets.";
		};
		case "spotTime":
		{
			_stat = "Spot Time";
			_toolTip = "This determines how fast the operator can spot targets.";
		};
		case "courage":
		{
			_stat = "Courage";
			_toolTip = "This determines how courageous the operator is (eg. when moving under fire)."
		};
		case "reloadSpeed":
		{
			_stat = "Reload Speed";
			_toolTip = "This determines how fast the operator can reload a weapon.";
		};
		case "commanding":
		{
			_stat = "Commanding skill";
			_toolTip = "This determines how well the operator can lead a group.";
		};
		case "general":
		{
			_stat = "General skill";
			_toolTip = "This determines the general skill of the operator.";
		};
	};
	_index = lbAdd [_currentLB, format ["%1: %2",_stat,_currentStat]];
	lbSetData [_currentLB, _index, str(_currentStat)];
	lbSetTooltip [_currentLB, _index, _toolTip];
	lbSetValue [_currentLB, _index, _sliderIndex]; // So we know what slider to edit later
	//diag_log format ["DATA SET AT: %1 DATA VALUE: %2 SUPPOSED VALUE: %3",_index,lbValue [_currentLB,_index],_sliderIndex];
} forEach _allStats; 