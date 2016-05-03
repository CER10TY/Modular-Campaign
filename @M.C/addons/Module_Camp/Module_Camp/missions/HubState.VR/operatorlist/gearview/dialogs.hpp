class ARC_Operator_Gear_View {
	idd = 5502;
	movingenable = false;
	onLoad = "nul = _this execVM 'operatorlist\gearview\dialog_init.sqf'";
controls[]=
{
	GUI_BACK,
	TXT_OP_LIST,
	BTN_VIEW_CLASS,
	COMBO_OP1_SELECT,
	COMBO_OP2_SELECT,
	COMBO_OP3_SELECT,
	COMBO_OP4_SELECT,
	BTN_VIEW_STATS,
	BTN_EXIT,
	TXT_ERROR,
	LIST_OP1_GEAR,
	LIST_OP2_GEAR,
	LIST_OP3_GEAR,
	LIST_OP4_GEAR,
	BTN_OP1_CHANGEGEAR,
	BTN_OP2_CHANGEGEAR,
	BTN_OP3_CHANGEGEAR,
	BTN_OP4_CHANGEGEAR
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by tryteyker, v1.063, #Nogojo)
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
	x = 0.425028 * safezoneW + safezoneX;
	y = 0.258 * safezoneH + safezoneY;
	w = 0.175313 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = 0.08;
};
class BTN_VIEW_CLASS: RscButton
{
	idc = 1600;
	action = "closeDialog 0; createDialog 'ARC_Operator_View'";
	text = "Class View"; //--- ToDo: Localize;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "View a brief description of your operators"; //--- ToDo: Localize;
};
class COMBO_OP1_SELECT: RscCombo
{
	idc = 2100;

	x = 0.345312 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 1"; //--- ToDo: Localize;
};
class COMBO_OP2_SELECT: RscCombo
{
	idc = 2101;

	x = 0.427812 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 2"; //--- ToDo: Localize;
};
class COMBO_OP3_SELECT: RscCombo
{
	idc = 2102;

	x = 0.510312 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 3"; //--- ToDo: Localize;
};
class COMBO_OP4_SELECT: RscCombo
{
	idc = 2103;

	x = 0.592812 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
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
	action = "closeDialog 0";

	text = "Exit operator view"; //--- ToDo: Localize;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "This also saves your selection"; //--- ToDo: Localize;
};
class BTN_OP1_CHANGEGEAR: RscButton
{
	idc = 1603;
	text = "Change gear"; //--- ToDo: Localize;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Change the gear of operator 1"; //--- ToDo: Localize;
};
class BTN_OP2_CHANGEGEAR: RscButton
{
	idc = 1604;
	text = "Change gear"; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Change the gear of operator 2"; //--- ToDo: Localize;
};
class BTN_OP3_CHANGEGEAR: RscButton
{
	idc = 1605;
	text = "Change gear"; //--- ToDo: Localize;
	x = 0.510312 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Change the gear of operator 3"; //--- ToDo: Localize;
};
class BTN_OP4_CHANGEGEAR: RscButton
{
	idc = 1606;
	text = "Change gear"; //--- ToDo: Localize;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Change the gear of operator 4"; //--- ToDo: Localize;
};
class TXT_ERROR: RscText
{
	idc = 1005;

	x = 0.453594 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.134062 * safezoneW;
	h = 0.022 * safezoneH;
};
class LIST_OP1_GEAR: RscListBox
{
	idc = 1500;

	x = 0.345312 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.308 * safezoneH;
};
class LIST_OP2_GEAR: RscListBox
{
	idc = 1501;

	x = 0.427812 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.308 * safezoneH;
};
class LIST_OP3_GEAR: RscListBox
{
	idc = 1502;

	x = 0.510312 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.308 * safezoneH;
};
class LIST_OP4_GEAR: RscListBox
{
	idc = 1503;

	x = 0.592812 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.308 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};