Operator files utilise profileNamespace to save name, class, and skillset.
Be aware that this is still only proof of concept.

Example operator script below, think SQF syntax from now

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

_name = "James 'King' Kingsley";
_class = "Officer";
_gear = []; // Add in all gear here, can be strings, does not have to be classnames (gear view just parses strings)
_stats = [0.6,0.3,0.9,1,0.4,0.1,1,0.5,1,0.5]; // Stats in order of setSkill array command. More info here: https://community.bistudio.com/wiki/setSkill_array
_picture = "operatorlist\operators\img\kingsley.jpg"; // Images saved in img\ folder

_idcRangeCombo = [2100, 2101, 2102, 2103]; // This is a constant for HubState.VR, it's the combobox values. 
_finalIDC = 0;
{
if (lbText [_x, 0] == "") exitWith {lbAdd [_x, _name]; _finalIDC = _forEachIndex;};
} foreach _idcRangeCombo;

_idcRangePics = [1200, 1201, 1202, 1203];
