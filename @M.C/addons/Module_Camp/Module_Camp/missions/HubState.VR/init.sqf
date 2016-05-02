// Ambient stuff
if (round(random 100) < 50) then {[(getmarkerpos "flyby_2"), (getmarkerpos "flyby_1"),50,"LIMITED","B_Heli_Attack_01_F", WEST] spawn BIS_fnc_ambientFlyby};
if (round(random 100) < 35) then {[(getmarkerpos "flyby_plane1"), (getmarkerpos "flyby_plane2"),100,"NORMAL","B_Plane_CAS_01_F", WEST] spawn BIS_fnc_ambientFlyby};
cutText ["", "BLACK IN", 10];
[
	[
		["PRESENTED BY","align = 'center' shadow = '1' size = '0.7' font='PuristaBold'"],
		[" ARCOMM","align = 'center' shadow = '1' size = '0.7' font='PuristaBold'","#ff0000"],
		[",","align = 'center' shadow = '1' size = '0.7' font='PuristaBold'"],
		["","<br/>"],
		["CAMPAIGN MISSION HUB","align = 'center' shadow = '1' size = '0.7'","#aaaaaa"]
	]
] spawn BIS_fnc_typeText2;



[] spawn {
sleep 1;
while {true} do {
{_x playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA"} foreach list squatTrigger;
sleep 5.6;
};
};

[] spawn {
sleep 1;
while {true} do {
{_x playMove "AmovPercMstpSnonWnonDnon_exercisePushup"} foreach list pushupTrigger;
sleep 15.7;
};
};