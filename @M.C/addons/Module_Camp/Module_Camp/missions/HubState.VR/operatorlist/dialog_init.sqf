/* common function header */
#include "..\arc_common.hpp"
/* common function header end */
/*
DISPLAY(5500, 2100) ctrlRemoveAllEventHandlers "LBSelChanged";
DISPLAY(5500, 2101) ctrlRemoveAllEventHandlers "LBSelChanged";
DISPLAY(5500, 2102) ctrlRemoveAllEventHandlers "LBSelChanged";
DISPLAY(5500, 2103) ctrlRemoveAllEventHandlers "LBSelChanged";
*/
[] execVM "operatorlist\operators\operatorlist.sqf";
[OPERATOR_SELECT_CONTROLS] call ARC_fnc_populateAllLB;
/*
DISPLAY(5500, 2100) ctrlSetEventHandler ["LBSelChanged","_this call ARC_fnc_handleOperator"];
DISPLAY(5500, 2101) ctrlSetEventHandler ["LBSelChanged","_this call ARC_fnc_handleOperator"];
DISPLAY(5500, 2102) ctrlSetEventHandler ["LBSelChanged","_this call ARC_fnc_handleOperator"];
DISPLAY(5500, 2103) ctrlSetEventHandler ["LBSelChanged","_this call ARC_fnc_handleOperator"];
*/