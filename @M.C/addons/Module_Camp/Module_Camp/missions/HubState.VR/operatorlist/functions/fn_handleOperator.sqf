/*
Author: tryteyker (last rev 2016-05-03)
Function that handles picture and class description in UI.

Parameters:
0: CONTROL - Control of listbox
1: NUMBER - New element index

Returns:
NOTHING
*/
private ["_ctrlLB","_index","_operator","_operatorClass","_operatorPicture","_ctrlPicList","_ctrlPic","_ctrlTextList","_ctrlText"];
_ctrlLB = param [0, controlNull, [controlNull]];
_index = param [1, 0, [0]];

_ctrlPicList = [1200, 1201, 1202, 1203]; // PIC_OPX control
_ctrlTextList = [1001, 1002, 1003, 1004]; // TXT_OPX control

if (isNull _ctrlLB) exitWith {};

_operator = _ctrlLB lbData _index;
_operatorPicture = profileNamespace getVariable (format ["%1_picture",_operator]);
_operatorClass = profileNamespace getVariable (format ["%1_class",_operator]);
_ctrlPic = _ctrlPicList select (_ctrlLB lbValue _index);
_ctrlText = _ctrlTextList select (_ctrlLB lbValue _index);

ctrlSetText [_ctrlPic, _operatorPicture];
ctrlSetText [_ctrlText, _operatorClass];