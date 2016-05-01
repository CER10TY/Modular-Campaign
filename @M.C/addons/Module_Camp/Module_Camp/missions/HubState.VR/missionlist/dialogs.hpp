class ARC_Mission_View {
	idd = -1;
	movingenable = false;
	onLoad = "nul = [] execVM 'missionlist\dialog_init.sqf'";
controls[]=
{
	GUI_BACK,
	TXT_MISSION_LIST,
	LIST_MISSIONS,
	BTN_ACCEPT,
	BTN_CANCEL,
	TXT_TIME_OF_DAY,
	TXT_TIME_SCRIPT,
	TXT_CURRENT_DATE,
	TXT_DATE_SCRIPT,
	PIC_NATO,
	PIC_TRIDENT
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by tryteyker, v1.063, #Maraqy)
////////////////////////////////////////////////////////

class GUI_BACK: IGUIBack
{
	idc = 2200;
	x = 0.360779 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.273281 * safezoneW;
	h = 0.22 * safezoneH;
};
class TXT_MISSION_LIST: RscText
{
	idc = 1000;
	text = "MISSION LIST"; //--- ToDo: Localize;
	x = 0.371094 * safezoneW + safezoneX;
	y = 0.39 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.033 * safezoneH;
	sizeEx = 0.06;
};
class LIST_MISSIONS: RscListbox
{
	idc = 1500;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.434 * safezoneH + safezoneY;
	w = 0.113437 * safezoneW;
	h = 0.088 * safezoneH;
};
class BTN_ACCEPT: RscButton
{
	idc = 1600;
	text = "Select"; //--- ToDo: Localize;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.533 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.044 * safezoneH;
	tooltip = "Confirm mission selection"; //--- ToDo: Localize;
};
class BTN_CANCEL: RscButton
{
	idc = 1601;
	text = "Cancel"; //--- ToDo: Localize;
	x = 0.448438 * safezoneW + safezoneX;
	y = 0.533 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.044 * safezoneH;
	tooltip = "Cancel mission selection"; //--- ToDo: Localize;
	action = "closeDialog 0";
};
class TXT_TIME_OF_DAY: RscText
{
	idc = 1001;
	text = "Time of day"; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.412 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.044 * safezoneH;
};
class TXT_TIME_SCRIPT: RscText
{
	idc = 1002;
	x = 0.505156 * safezoneW + safezoneX;
	y = 0.456 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
};
class TXT_CURRENT_DATE: RscText
{
	idc = 1003;
	text = "Current date"; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.478 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.044 * safezoneH;
};
class TXT_DATE_SCRIPT: RscText
{
	idc = 1004;
	x = 0.505156 * safezoneW + safezoneX;
	y = 0.522 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.022 * safezoneH;
};
class PIC_NATO: RscPicture
{
	idc = 1200;
	text = "missionlist\img\flag_nato.jpg";
	x = 0.561874 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.0670312 * safezoneW;
	h = 0.088 * safezoneH;
};
class PIC_TRIDENT: RscPicture
{
	idc = 1201;
	text = "missionlist\img\flag_usa.jpg";
	x = 0.561874 * safezoneW + safezoneX;
	y = 0.489 * safezoneH + safezoneY;
	w = 0.0670312 * safezoneW;
	h = 0.088 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};