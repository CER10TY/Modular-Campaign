/*
Author: Hypnomatic and iceman77, revised by tryteyker 2016-05-04. Original script: https://forums.bistudio.com/topic/139602-from-display-name-to-classname/?p=2519425
Function to grab specific config entry for specified item. Iterates through all configs seperately until it finds relevant item.

Parameters:
0: STRING  - Classname of object to check

RETURNS
0: Config - Config name of object
*/

private["_displayName","_default","_out","_cfgWeapons","_cfgMagazines","_cfgVehicles","_configs","_cfgAmmo","_cfgGlasses"]; 

scopeName "main";

_default = param [0, "", [""]];
if (_default == "") exitWith {_default};
_out = ""; 

_cfgWeapons = configFile >> "CfgWeapons"; 
_cfgMagazines = configFile >> "CfgMagazines"; 
_cfgVehicles = configFile >> "CfgVehicles";
_cfgAmmo = configFile >> "CfgAmmo";
_cfgGlasses = configFile >> "CfgGlasses";

_configs = [_cfgAmmo, _cfgWeapons, _cfgMagazines, _cfgVehicles, _cfgGlasses];
{
	for "_i" from 0 to count _x - 1 do { 
		if (isClass (_x select _i)) then {
			if (_default == configName(_x select _i)) exitWith {
				_out = configName (_x);
			}; 
			if (_out != "") then {breakTo "main"};
		};
	}; 
} foreach _configs;

_out 