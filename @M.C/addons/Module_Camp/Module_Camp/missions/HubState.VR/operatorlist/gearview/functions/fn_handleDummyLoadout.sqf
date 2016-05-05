/*
Author: tryteyker (last rev 2016-05-04)
Function to assign arsenal loadout to dummy soldier and save relevant info in profileNamespace.
The gear is sort of compartmentalized to save space in namespace, so instead of _operatorName_uniform, _operatorName_vest, etc it will be _operatorName_gear_containers. 
Further info will be provided at relevant lines.

Parameters:
0: STRING - Arsenal Loadout Name
1: STRING - Unique name of operator (optional)

RETURNS:
N/A
*/
private ["_gearName","_operatorName","_dummy","_uniform","_vest","_backpack","_uniformItems","_vestItems","_backpackItems","_uniformArray","_gunsArray","_primaryWeapon","_secondaryWeapon","_handgunWeapon","_primaryItems","_secondaryItems","_handgunItems","_primaryMagazine","_secondaryMagazine","_handgunMagazine"];
_gearName = param [0, "", [""]];
_operatorName = param [1, "", [""]];

_dummy = createVehicle ["B_Soldier_F", [0,0,0], [], 0, "NONE"];
[_dummy, [profileNamespace, _gearName]] call BIS_fnc_loadInventory;

_uniform = uniform _dummy;
_vest = vest _dummy;
_backpack = backpack _dummy;

_uniformItems = uniformItems _dummy;
_vestItems = vestItems _dummy;
_backpackItems = backpackItems _dummy;

_uniformArray = [
[_uniform, _uniformItems], // Uniform ((_array select 0) select 0), gear ((_array select 0) select 1)
[_vest, _vestItems],	// Vest ((_array select 1) select 0), gear ((_array select 1) select 1)
[_backpack, _backpackItems] // Backpack ((_array select 2) select 0), gear ((_array select 2) select 1)
];

profileNamespace setVariable [(format ["%1_gear_containers",_operatorName]),_uniformArray];

_primaryWeapon = primaryWeapon _dummy; // Rifle
_secondaryWeapon = secondaryWeapon _dummy; // Launcher
_handgunWeapon = handgunWeapon _dummy; // Pistol

_primaryItems = primaryWeaponItems _dummy;
_secondaryItems = secondaryWeaponItems _dummy;
_handgunItems = handgunItems _dummy;

_primaryMagazine = primaryWeaponMagazine _dummy;
_secondaryMagazine = secondaryWeaponMagazine _dummy;
_handgunMagazine = handgunMagazine _dummy;

_gunsArray = [
[_primaryWeapon, _primaryItems, _primaryMagazine], // Rifle ((_array select 0) select 0), attachments ((_array select 0) select 1), mag type ((_array select 0) select 2)
[_secondaryWeapon, _secondaryItems, _secondaryMagazine], // Launcher ((_array select 1) select 0), attachments ((_array select 1) select 1), mag type ((_array select 1), select 2)
[_handgunWeapon, _handgunItems, _handgunMagazine] // Handgun ((_array select 2) select 0), attachments ((_array select 2) select 1), mag type ((_array select 2) select 2)
];

profileNamespace setVariable [(format ["%1_gear_weapons",_operatorName]), _gunsArray];
