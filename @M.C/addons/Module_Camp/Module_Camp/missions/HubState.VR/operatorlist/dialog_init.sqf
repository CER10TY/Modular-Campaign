[] execVM "operatorlist\operators\operatorlist.sqf";
((findDisplay 5500) displayCtrl 2100) ctrlRemoveAllEventHandlers "LBSelChanged";
((findDisplay 5500) displayCtrl 2101) ctrlRemoveAllEventHandlers "LBSelChanged";
((findDisplay 5500) displayCtrl 2102) ctrlRemoveAllEventHandlers "LBSelChanged";
((findDisplay 5500) displayCtrl 2103) ctrlRemoveAllEventHandlers "LBSelChanged";

[[2100,2101,2102,2103]] call ARC_fnc_populateAllLB;

((findDisplay 5500) displayCtrl 2100) ctrlAddEventHandler ["LBSelChanged", {_this call ARC_fnc_handleOperator}];
((findDisplay 5500) displayCtrl 2101) ctrlAddEventHandler ["LBSelChanged", {_this call ARC_fnc_handleOperator}];
((findDisplay 5500) displayCtrl 2102) ctrlAddEventHandler ["LBSelChanged", {_this call ARC_fnc_handleOperator}];
((findDisplay 5500) displayCtrl 2103) ctrlAddEventHandler ["LBSelChanged", {_this call ARC_fnc_handleOperator}];