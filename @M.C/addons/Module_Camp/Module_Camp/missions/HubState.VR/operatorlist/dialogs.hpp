class ARC_Operator_View {
	idd = -1;
	movingenable = false;
	onLoad = "nul = _this execVM 'operatorlist\dialog_init.sqf'";
controls[]=
{
	GUI_BACK,
	TXT_OP_LIST,
	PIC_OP1,
	TXT_OP1_NAME,
	BTN_VIEW_GEAR,
	PIC_OP2,
	TXT_OP2_NAME,
	PIC_OP3,
	TXT_OP3_NAME,
	PIC_OP4,
	TXT_OP4_NAME,
	COMBO_OP1_SELECT,
	COMBO_OP2_SELECT,
	COMBO_OP3_SELECT,
	COMBO_OP4_SELECT,
	BTN_VIEW_STATS,
	BTN_EXIT
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by tryteyker, v1.063, #Luzydy)
////////////////////////////////////////////////////////

class GUI_BACK: IGUIBack
{
	idc = 2200;
	x = 0.335 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.345469 * safezoneW;
	h = 0.506 * safezoneH;
};
class TXT_OP_LIST: RscText
{
	idc = 1000;
	text = "CURRENT OPERATORS"; //--- ToDo: Localize;
	x = 0.425 * safezoneW + safezoneX;
	y = 0.258 * safezoneH + safezoneY;
	w = 0.175313 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = 0.075;
};
class PIC_OP1: RscPicture
{
	idc = 1200;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.308 * safezoneH;
};
class TXT_OP1_NAME: RscText
{
	idc = 1001;
	text = "James 'King' Kingsley"; //--- ToDo: Localize;
	x = 0.340156 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.044 * safezoneH;
};
class BTN_VIEW_GEAR: RscButton
{
	idc = 1600;
	text = "Gear View"; //--- ToDo: Localize;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "View the gear of your operators"; //--- ToDo: Localize;
};
class PIC_OP2: RscPicture
{
	idc = 1201;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.308 * safezoneH;
};
class TXT_OP2_NAME: RscText
{
	idc = 1002;
	text = "Derek 'Try' Smalls"; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.044 * safezoneH;
};
class PIC_OP3: RscPicture
{
	idc = 1202;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.308 * safezoneH;
};
class TXT_OP3_NAME: RscText
{
	idc = 1003;
	text = "Edward 'Ed' King"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.044 * safezoneH;
};
class PIC_OP4: RscPicture
{
	idc = 1203;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.308 * safezoneH;
};
class TXT_OP4_NAME: RscText
{
	idc = 1004;
	text = "Walther 'Beedle' Ned"; //--- ToDo: Localize;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.044 * safezoneH;
};
class COMBO_OP1_SELECT: RscCombo
{
	idc = 2100;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 1"; //--- ToDo: Localize;
};
class COMBO_OP2_SELECT: RscCombo
{
	idc = 2101;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 2"; //--- ToDo: Localize;
};
class COMBO_OP3_SELECT: RscCombo
{
	idc = 2102;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 3"; //--- ToDo: Localize;
};
class COMBO_OP4_SELECT: RscCombo
{
	idc = 2103;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 4"; //--- ToDo: Localize;
};
class BTN_VIEW_STATS: RscButton
{
	idc = 1601;
	text = "Stats View"; //--- ToDo: Localize;
	x = 0.402031 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.0464063 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "View the proficiencies of your operators"; //--- ToDo: Localize;
};
class BTN_EXIT: RscButton
{
	idc = 1602;
	text = "Exit operator view"; //--- ToDo: Localize;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	action = "closeDialog 0";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};