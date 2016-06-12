/*
Author: tryteyker (last rev 2016-05-03)
Function to add an individual operator to profileNamespace. Does not handle UI elements. Does not read automatically from ..\operatorlist\operators.
Called from individual operators' .sqf file.

Parameters:
0: STRING - Operator Name 
1: STRING - Operator Class
2: ARRAY - Operator Gear (using class names)
3: ARRAY - Operator Stats (setSkill array)
4: STRING - Operator picture (absolute file path)

Returns:
NOTHING
*/
private ["_name","_class","_gear","_stats","_picture","_uniqueName","_profileName","_profileClass","_profileGear","_profilePicture","_operators"];
_name = param [0, "", [""]];
_class = param [1, "", [""]];
_gear = param [2, "", [""]];
_stats = param [3, [(random 1), (random 1), (random 1), (random 1), (random 1), (random 1), (random 1), (random 1), (random 1), (random 1)],  []];
_picture = param [4, "", [""]];

_uniqueName = _name splitString " '" joinString ""; // Example for later calling: If operator name was James 'King' Kingsley, _uniqueName is now JamesKingKingsley.
// Remains to be seen how taxing profileNamespace usage is for up to 8+ operators.
// Name
_profileName = format ["%1_name",_uniqueName];
profileNamespace setVariable [_profileName, _name];
// Class
_profileClass = format ["%1_class",_uniqueName];
profileNamespace setVariable [_profileClass, _class];
// Gear
[_gear,_uniqueName] call ARC_fnc_handleDummyLoadout;
// Stats
{
	_stat = format ["%1_%2",_uniqueName,_x];
	profileNamespace setVariable [_stat, _stats select _foreachIndex];
} forEach ["aimingAccuracy","aimingShake","aimingSpeed","endurance","spotDistance","spotTime","courage","reloadSpeed","commanding","general"];

// Picture
_profilePicture = format ["%1_picture",_uniqueName];
profileNamespace setVariable [_profilePicture, _picture];

// Global namelist
_operators = profileNamespace getVariable ["operators",[]];
if !(_uniqueName in _operators) then { // Prevent duplicates
profileNamespace setVariable ["operators", _operators + [_uniqueName]];
};