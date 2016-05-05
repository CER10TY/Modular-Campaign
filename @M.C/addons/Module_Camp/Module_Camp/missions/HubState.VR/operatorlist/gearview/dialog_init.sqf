((findDisplay 5502) displayCtrl 2100) ctrlRemoveAllEventHandlers "LBSelChanged";
((findDisplay 5502) displayCtrl 2101) ctrlRemoveAllEventHandlers "LBSelChanged";
((findDisplay 5502) displayCtrl 2102) ctrlRemoveAllEventHandlers "LBSelChanged";
((findDisplay 5502) displayCtrl 2103) ctrlRemoveAllEventHandlers "LBSelChanged";

((findDisplay 5502) displayCtrl 1603) ctrlRemoveAllEventHandlers "ButtonDown";
((findDisplay 5502) displayCtrl 1604) ctrlRemoveAllEventHandlers "ButtonDown";
((findDisplay 5502) displayCtrl 1605) ctrlRemoveAllEventHandlers "ButtonDown";
((findDisplay 5502) displayCtrl 1606) ctrlRemoveAllEventHandlers "ButtonDown";

[[2100,2101,2102,2103]] call ARC_fnc_populateAllLB;

((findDisplay 5502) displayCtrl 2100) ctrlAddEventHandler ["LBSelChanged", {_this call ARC_fnc_handleGearList}];
((findDisplay 5502) displayCtrl 2101) ctrlAddEventHandler ["LBSelChanged", {_this call ARC_fnc_handleGearList}];
((findDisplay 5502) displayCtrl 2102) ctrlAddEventHandler ["LBSelChanged", {_this call ARC_fnc_handleGearList}];
((findDisplay 5502) displayCtrl 2103) ctrlAddEventHandler ["LBSelChanged", {_this call ARC_fnc_handleGearList}];

// This is arguably better than bouncing the ctrlIDC through 2 functions.
((findDisplay 5502) displayCtrl 1603) ctrlAddEventHandler ["ButtonDown", {missionNamespace setVariable ["gear_button_clicked",[_this select 0, 0]]}];
((findDisplay 5502) displayCtrl 1604) ctrlAddEventHandler ["ButtonDown", {missionNamespace setVariable ["gear_button_clicked",[_this select 0, 1]]}];
((findDisplay 5502) displayCtrl 1605) ctrlAddEventHandler ["ButtonDown", {missionNamespace setVariable ["gear_button_clicked",[_this select 0, 2]]}];
((findDisplay 5502) displayCtrl 1606) ctrlAddEventHandler ["ButtonDown", {missionNamespace setVariable ["gear_button_clicked",[_this select 0, 3]]}];