class ARC_Operator_Stats_View {
	idd = 5501;
	movingenable = false;
	onLoad = "[] execVM 'operatorlist\statsview\dialog_init.sqf'";
	controls[]=
{
	GUI_BACK,
	TXT_OP_LIST,
	BTN_VIEW_CLASS,
	COMBO_OP1_SELECT,
	COMBO_OP2_SELECT,
	COMBO_OP3_SELECT,
	COMBO_OP4_SELECT,
	BTN_VIEW_GEAR,
	BTN_EXIT,
	LIST_OP1_STATS,
	LIST_OP2_STATS,
	LIST_OP3_STATS,
	LIST_OP4_STATS,
	SLIDER_SKILL_OP1,
	SLIDER_SKILL_OP2,
	SLIDER_SKILL_OP3,
	SLIDER_SKILL_OP4
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by tryteyker, v1.063, #Zebema)
////////////////////////////////////////////////////////

class GUI_BACK: IGUIBack
{
	idc = 2200;

	x = 0.304062 * safezoneW + safezoneX;
	y = 0.247 * safezoneH + safezoneY;
	w = 0.386719 * safezoneW;
	h = 0.506 * safezoneH;
};
class TXT_OP_LIST: RscText
{
	idc = 1000;
	text = "CURRENT OPERATORS"; //--- ToDo: Localize;
	x = 0.407187 * safezoneW + safezoneX;
	y = 0.258 * safezoneH + safezoneY;
	w = 0.180469 * safezoneW;
	h = 0.055 * safezoneH;
	sizeEx = 0.08;
};
class BTN_VIEW_CLASS: RscButton
{
	idc = 1600;
	action = "closeDialog 1; createDialog 'ARC_Operator_View'";
	text = "Class View"; //--- ToDo: Localize;
	x = 0.314375 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "View a brief description of your operators"; //--- ToDo: Localize;
};
class COMBO_OP1_SELECT: RscCombo
{
	idc = 2100;
	onLBSelChanged = "_this call ARC_fnc_handleStats";
	x = 0.314375 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 1"; //--- ToDo: Localize;
};
class COMBO_OP2_SELECT: RscCombo
{
	idc = 2101;
	onLBSelChanged = "_this call ARC_fnc_handleStats";
	x = 0.407187 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 2"; //--- ToDo: Localize;
};
class COMBO_OP3_SELECT: RscCombo
{
	idc = 2102;
	onLBSelChanged = "_this call ARC_fnc_handleStats";
	x = 0.5 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 3"; //--- ToDo: Localize;
};
class COMBO_OP4_SELECT: RscCombo
{
	idc = 2103;
	onLBSelChanged = "_this call ARC_fnc_handleStats";
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 4"; //--- ToDo: Localize;
};
class BTN_VIEW_GEAR: RscButton
{
	idc = 1601;
	text = "Gear View"; //--- ToDo: Localize;
	action = "closeDialog 1; createDialog 'ARC_Operator_Gear_View'";
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "View the gear of your operators"; //--- ToDo: Localize;
};
class BTN_EXIT: RscButton
{
	idc = 1602;
	action = "closeDialog 1";
	text = "Exit operator view"; //--- ToDo: Localize;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "This also saves your selection"; //--- ToDo: Localize;
};
class LIST_OP1_STATS: RscListBox
{
	idc = 1500;
	onLBSelChanged = "_this call ARC_fnc_handleSlider";
	x = 0.314375 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.308 * safezoneH;
};
class LIST_OP2_STATS: RscListBox
{
	idc = 1501;
	onLBSelChanged = "_this call ARC_fnc_handleSlider";
	x = 0.407187 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.308 * safezoneH;
};
class LIST_OP3_STATS: RscListBox
{
	idc = 1502;
	onLBSelChanged = "_this call ARC_fnc_handleSlider";
	x = 0.5 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.308 * safezoneH;
};
class LIST_OP4_STATS: RscListBox
{
	idc = 1503;
	onLBSelChanged = "_this call ARC_fnc_handleSlider";
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.308 * safezoneH;
};
class SLIDER_SKILL_OP1: RscSlider
{
	idc = 1900;
	x = 0.314375 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
};
class SLIDER_SKILL_OP2: RscSlider
{
	idc = 1901;
	x = 0.407187 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
};
class SLIDER_SKILL_OP3: RscSlider
{
	idc = 1902;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
};
class SLIDER_SKILL_OP4: RscSlider
{
	idc = 1903;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};