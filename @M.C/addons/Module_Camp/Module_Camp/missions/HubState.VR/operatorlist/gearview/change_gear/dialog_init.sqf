/* common function header */
#include "..\..\..\arc_common.hpp"
/* common function header end */

/* DISPLAY(5503, 2100) ctrlRemoveAllEventHandlers "LBSelChanged";
DISPLAY(5503, 2101) ctrlRemoveAllEventHandlers "LBSelChanged";
DISPLAY(5503, 2102) ctrlRemoveAllEventHandlers "LBSelChanged";
DISPLAY(5503, 2103) ctrlRemoveAllEventHandlers "LBSelChanged";
 */
[OPERATOR_SELECT_CONTROLS] call ARC_fnc_populateAllLB;
"populate" call ARC_fnc_changeGear;

/* DISPLAY(5503, 2100) ctrlSetEventHandler ["LBSelChanged","_this call ARC_fnc_handleGearList"];
DISPLAY(5503, 2101) ctrlSetEventHandler ["LBSelChanged","_this call ARC_fnc_handleGearList"];
DISPLAY(5503, 2102) ctrlSetEventHandler ["LBSelChanged","_this call ARC_fnc_handleGearList"];
DISPLAY(5503, 2103) ctrlSetEventHandler ["LBSelChanged","_this call ARC_fnc_handleGearList"]; */