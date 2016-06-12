// Name: James 'Wellwhy' O'Connor
// Class: Rifleman
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
private ["_name","_class","_gear","_stats","_picture"];
_name = "James 'Wellwhy' O'Connor";
_class = "Rifleman";
_gear = "greatscott";
_stats = [0.6,0.3,0.9,1,0.4,0.1,1,0.5,1,0.5]; // Stats in order of setSkill array command. More info here: https://community.bistudio.com/wiki/setSkill_array
_picture = "operatorlist\img\o-image.jpg"; // Images saved in img\ folder

[_name, _class, _gear, _stats, _picture] call ARC_fnc_addOperatorToNamespace;