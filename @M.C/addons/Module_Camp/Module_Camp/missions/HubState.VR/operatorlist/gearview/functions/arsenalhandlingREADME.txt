This is how arsenal handles loadouts.
Stored in "BIS_fnc_saveInventory_data" in profileNamespace.

["greatscott", // Save name assigned by user (_array select 0)
[
["U_B_CTRG_1",["FirstAidKit","HandGrenade","SmokeShell","SmokeShellGreen","Chemlight_green"]], // Uniform (((_array select 1) select 0) select 0), uniform gear (((_array select 1) select 0) select 1)
["V_BandollierB_khk",["100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","100Rnd_65x39_caseless_mag","Chemlight_green"]], // Vest (((_array select 1) select 1) select 0), vest gear (((_array select 1) select 1) select 1)
["B_AssaultPack_mcamo",[]], // Backpack (((_array select 1) select 2) select 0), backpack gear (((_array select 1) select 2) select 1)
"H_Beret_Colonel", // Headgear ((_array select 1) select 3)
"G_Bandanna_aviator", // Goggles ((_array select 1) select 4)
"Binocular", // Ranged ((_array select 1) select 5)
["arifle_MXC_F",["","","",""],"30Rnd_65x39_caseless_mag"], // Rifle (((_array select 1) select 6) select 0), rifle attachments (((_array select 1) select 6) select 1), rifle mag type (((_array select 1) select 6) select 2)
["launch_NLAW_F",["","","",""],""], // Launcher (((_array select 1) select 7) select 0), attachments (((_array select 1) select 7) select 1), ammo type (((_array select 1) select 7) select 2)
["hgun_Pistol_heavy_01_F",["","","",""],"11Rnd_45ACP_Mag"], // Handgun (((_array select 1) select 8) select 0), attachments (((_array select 1) select 8) select 1), ammo type (((_array select 1) select 8) select 2)
["ItemMap","ItemCompass","ItemWatch","ItemRadio","ItemGPS","NVGoggles_OPFOR"], // Misc items ((_array select 1) select 9)
["AfricanHead_03","Male12ENG","BI"]]] // Head, Voice, Insignia ((_array select 1) select 10)