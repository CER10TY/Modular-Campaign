/*
Author: tryteyker (last rev 2016-05-09)
Function that handles picture and class description in UI.

Parameters:
0: CONTROL - Control of listbox
1: NUMBER - New element index

Returns:
NOTHING
*/
/* common function header */
#include "..\..\arc_common.hpp"
/* common function header end */

private ["_ctrlLB","_index","_operator","_operatorClass","_operatorPicture","_ctrlPicList","_ctrlPic","_ctrlTextList","_ctrlText"];
_ctrlLB = param [0, controlNull, [controlNull]];
_index = param [1, 0, [0]];

if (isNull _ctrlLB) exitWith {};

_operator = _ctrlLB lbData _index;
_operatorPicture = profileNamespace getVariable (format ["%1_picture",_operator]); // Pull data from profileNamespace
_operatorClass = profileNamespace getVariable (format ["%1_class",_operator]);
_ctrlPic = SELECT_VALUE(OPERATOR_PICTURE_CONTROLS, (_ctrlLB lbValue _index)); // Macros
_ctrlText = SELECT_VALUE(OPERATOR_CLASS_CONTROLS, (_ctrlLB lbValue _index));

ctrlSetText [_ctrlPic, _operatorPicture]; // Set text and picture on relevant controls.
ctrlSetText [_ctrlText, _operatorClass];