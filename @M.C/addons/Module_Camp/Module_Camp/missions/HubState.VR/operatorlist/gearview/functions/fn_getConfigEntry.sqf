/*
Author: Hypnomatic and iceman77, revised by tryteyker (last rev 2016-05-19). Original script: https://forums.bistudio.com/topic/139602-from-display-name-to-classname/?p=2519425
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

// Define configs
_cfgWeapons = configFile >> "CfgWeapons"; 
_cfgMagazines = configFile >> "CfgMagazines"; 
_cfgVehicles = configFile >> "CfgVehicles";
_cfgAmmo = configFile >> "CfgAmmo";
_cfgGlasses = configFile >> "CfgGlasses";

_configs = [_cfgAmmo, _cfgWeapons, _cfgMagazines, _cfgVehicles, _cfgGlasses];
{
	for "_i" from 0 to count _x - 1 do { // 0 index based so as always we subtract 1. Iterates through all relevant configs.
		if (isClass (_x select _i)) then { // If selected value is a class (there are few values which aren't)
			if (_default == configName(_x select _i)) exitWith { // Now we compare if our classname is equal to that of _x select _i.
				_out = configName (_x); // If it is, we return the CONFIG NAME (ie CfgVehicles).
			}; 
			if (_out != "") then {breakTo "main"}; // Better than exitWith x3
		};
	}; 
} foreach _configs;

_out 