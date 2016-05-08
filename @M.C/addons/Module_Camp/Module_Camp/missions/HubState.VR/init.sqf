// Ambient stuff
if (round(random 100) < 50) then {[(getmarkerpos "flyby_2"), (getmarkerpos "flyby_1"),50,"LIMITED","B_Heli_Attack_01_F", WEST] spawn BIS_fnc_ambientFlyby};
if (round(random 100) < 35) then {[(getmarkerpos "flyby_plane1"), (getmarkerpos "flyby_plane2"),100,"NORMAL","B_Plane_CAS_01_F", WEST] spawn BIS_fnc_ambientFlyby};
//cutText ["", "BLACK IN", 18];
[
	[
		["PRESENTED BY","align = 'center' shadow = '1' size = '0.7' font='PuristaBold'"],
		[" ARCOMM","align = 'center' shadow = '1' size = '1' font='PuristaBold'","#ff0000"],
		["","<br/>"],
		["MODULAR HUB","align = 'center' shadow = '1' size = '0.7'","#ffffff"],
		[" version 0.0.5 (dev)","align = 'center' shadow = '1' size = '0.5'","#aaaaaa"]
	]
] spawn BIS_fnc_typeText2;

[] spawn {
private "_trig";
sleep 1;
_trig = list squatTrigger;
while {true} do {
{_x playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA"} foreach _trig;
sleep 5.6;
};
};

[] spawn {
private "_trig";
sleep 1;
_trig = list pushupTrigger; // One final list, prevents player from accidentally joining in on the action.
while {true} do {
{_x playMove "AmovPercMstpSnonWnonDnon_exercisePushup"} foreach _trig;
sleep 15.7;
};
};