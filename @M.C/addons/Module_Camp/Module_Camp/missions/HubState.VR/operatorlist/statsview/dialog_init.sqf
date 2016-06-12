/* common function header */
#include "..\..\arc_common.hpp"
/* common function header end */

{
	sliderSetRange [_x, 0, 1];
	sliderSetSpeed [_x, 0.1, 0.1];
	sliderSetPosition [_x, 0];
	ctrlEnable [_x, false];
} foreach OPERATOR_STATS_SLIDERS;

[OPERATOR_SELECT_CONTROLS] call ARC_fnc_populateAllLB;