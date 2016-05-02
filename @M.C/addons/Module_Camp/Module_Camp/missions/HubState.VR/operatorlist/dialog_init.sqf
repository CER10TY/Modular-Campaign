private ["_idcCombo","_idcPics","_idcClass"];
_idcCombo = [2100, 2101, 2102, 2103]; // This is a constant for HubState.VR, it's the combobox values. 
_idcPics = [1200, 1201, 1202, 1203];
_idcClass = [1001, 1002, 1003, 1004];
nul = [_idcCombo, _idcPics, _idcClass] execVM "operatorlist\operators\kingsley.sqf";