class ARC_Operator_Gear_View {
	idd = 5502;
	movingenable = false;
	onLoad = "[] execVM 'operatorlist\gearview\dialog_init.sqf'";
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
// GUI EDITOR OUTPUT START (by tryteyker, v1.063, #Cimily)
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
	x = 0.314375 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 1"; //--- ToDo: Localize;
	onLBSelChanged = "_this call ARC_fnc_handleGearList";
};
class COMBO_OP2_SELECT: RscCombo
{
	idc = 2101;
	x = 0.407187 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 2"; //--- ToDo: Localize;
	onLBSelChanged = "_this call ARC_fnc_handleGearList";
};
class COMBO_OP3_SELECT: RscCombo
{
	idc = 2102;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 3"; //--- ToDo: Localize;
	onLBSelChanged = "_this call ARC_fnc_handleGearList";
};
class COMBO_OP4_SELECT: RscCombo
{
	idc = 2103;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.335 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Select Operator 4"; //--- ToDo: Localize;
	onLBSelChanged = "_this call ARC_fnc_handleGearList";
};
class BTN_VIEW_STATS: RscButton
{
	idc = 1601;
	text = "Stats View"; //--- ToDo: Localize;
	x = 0.37625 * safezoneW + safezoneX;
	y = 0.72 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "View the proficiencies of your operators"; //--- ToDo: Localize;
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
class LIST_OP1_GEAR: RscListbox
{
	idc = 1500;
	x = 0.314375 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.308 * safezoneH;
};
class LIST_OP2_GEAR: RscListbox
{
	idc = 1501;
	x = 0.407187 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.308 * safezoneH;
};
class LIST_OP3_GEAR: RscListbox
{
	idc = 1502;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.308 * safezoneH;
};
class LIST_OP4_GEAR: RscListbox
{
	idc = 1503;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.368 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.308 * safezoneH;
};
class BTN_OP1_CHANGEGEAR: RscButton
{
	idc = 1603;
	action = "closeDialog 1; createDialog 'ARC_Operator_GearChange_View'";
	text = "Change gear"; //--- ToDo: Localize;
	x = 0.314375 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Change the gear of operator 1"; //--- ToDo: Localize;
	onButtonDown = "missionNamespace setVariable ['gear_button_clicked',[_this select 0, 0]]";
};
class BTN_OP2_CHANGEGEAR: RscButton
{
	idc = 1604;
	action = "closeDialog 1; createDialog 'ARC_Operator_GearChange_View'";
	text = "Change gear"; //--- ToDo: Localize;
	x = 0.407187 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Change the gear of operator 2"; //--- ToDo: Localize;
	onButtonDown = "missionNamespace setVariable ['gear_button_clicked',[_this select 0, 1]]";
};
class BTN_OP3_CHANGEGEAR: RscButton
{
	idc = 1605;
	action = "closeDialog 1; createDialog 'ARC_Operator_GearChange_View'";
	text = "Change gear"; //--- ToDo: Localize;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Change the gear of operator 3"; //--- ToDo: Localize;
	onButtonDown = "missionNamespace setVariable ['gear_button_clicked',[_this select 0, 2]]";
};
class BTN_OP4_CHANGEGEAR: RscButton
{
	idc = 1606;
	action = "closeDialog 1; createDialog 'ARC_Operator_GearChange_View'";
	text = "Change gear"; //--- ToDo: Localize;
	x = 0.592812 * safezoneW + safezoneX;
	y = 0.687 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
	tooltip = "Change the gear of operator 4"; //--- ToDo: Localize;
	onButtonDown = "missionNamespace setVariable ['gear_button_clicked',[_this select 0, 3]]";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};