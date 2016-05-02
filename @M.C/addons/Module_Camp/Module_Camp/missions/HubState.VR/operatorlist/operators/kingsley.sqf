// Name: James 'King' Kingsley
// Class: Officer
// Gear: Standard MX 6.5 mm (for gear view later)
/* Stats:
Aiming accuracy: 0.6
Aiming Shake: 0.3
Aiming Speed: 0.9
Endurance: 1
Spot Distance: 0.4
Spot Time: 0.1
Courage: 1
Reload Speed: 0.5
Commanding: 1
General: 0.5
*/
private ["_name","_class","_gear","_stats","_picture","_idcCombo","_finalIDC","_index","_idcPics","_lbSlot", "_picCtrl","_idcClass"];
disableSerialization; 
_name = "James 'King' Kingsley";
_class = "Officer";
_gear = []; // Add in all gear here, can be strings, does not have to be classnames (gear view just parses strings)
_stats = [0.6,0.3,0.9,1,0.4,0.1,1,0.5,1,0.5]; // Stats in order of setSkill array command. More info here: https://community.bistudio.com/wiki/setSkill_array
_picture = "operatorlist\img\no-image.jpg"; // Images saved in img\ folder
_idcCombo = _this select 0;
_idcPics = _this select 1;
_idcClass = _this select 2;

_finalIDC = 0;
_index = 0;
{
if (lbText [_x, 0] == "") exitWith {lbAdd [_x, _name]; lbSetCurSel [_x, 0]; _finalIDC = _x; _index = _forEachIndex};
} foreach _idcCombo;

_lbSlot = _finalIDC;
_picCtrl = _idcPics select _index;
ctrlSetText [_picCtrl, _picture];

_textCtrl = _idcClass select _index;
ctrlSetText [_textCtrl, _class];