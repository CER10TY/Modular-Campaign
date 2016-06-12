/*
Author: tryteyker (last rev 2015-05-19)
Literally a function to handle all the fancy sliders below the list. That's it.

Parameters:
0: CONTROL - Current control
1: INDEX - Current index

Returns:
NOTHING
*/

/* common function header */
#include "..\..\..\arc_common.hpp"
/* common function header end */

private ["_ctrlLB","_index","_selectedStat","_slider"];

_ctrlLB = param [0, controlNull, [controlNull]]; // CONTROL, NOT IDC!
_index = param [1, 0, [0]];
_currentLB = SELECT_VALUE(OPERATOR_GEAR_SELECT_CTRL,(_ctrlLB lbValue _index));

if (isNull _ctrlLB) exitWith {};

_selectedStat = lbData [_currentLB, _index];
//hint format ["%1 : %2: %3",_ctrlLB,_selectedStat,_currentLB];
_slider = SELECT_VALUE(OPERATOR_STATS_SLIDERS,(_ctrlLB lbValue _index));

sliderSetPosition [_slider, parseNumber _selectedStat];