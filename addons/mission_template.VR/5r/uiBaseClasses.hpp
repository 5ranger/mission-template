class x5r_RscText
{
    type = 0;
    idc = -1;
    style = 0;

    font = "PuristaMedium";
    sizeEx = 0.04;

    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};

    text = "";
};

class x5r_RscButton
{
    type = 1;
    style = 2;
    idc = -1;

    x = 0;
    y = 0;
    w = 0.045;
    h = 0.06;

    font = "PuristaMedium";
    sizeEx = 0.04;

    text = "";

    colorText[] = {1,1,1,1};
    colorDisabled[] = {0.4,0.4,0.4,1};

    colorBackground[] = {0.2,0.2,0.2,1};
    colorBackgroundActive[] = {0.3,0.3,0.3,1};
    colorBackgroundDisabled[] = {0.1,0.1,0.1,1};
    colorFocused[] = {0.3,0.3,0.3,0};

    colorShadow[] = {0,0,0,0};
    colorBorder[] = {0,0,0,1};

    borderSize = 0;

    soundEnter[] = {"",0.09,1};
    soundPush[] = {"",0.09,1};
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
    soundEscape[] = {"",0.09,1};

    offsetX = 0;
    offsetY = 0;
    offsetPressedX = 0;
    offsetPressedY = 0;
};

class x5r_RscEdit
{
    type = 2;
    style = 0;
    idc = -1;

    font = "PuristaMedium";
    sizeEx = 0.04;

    text = "";

    colorText[] = {1,1,1,1};
    colorSelection[] = {0.5,0.5,0.5,1};
    colorDisabled[] = {0.4,0.4,0.4,1};

    autocomplete = "";
};

class x5r_iconButton : x5r_RscButton
{
    style = 48;
    text = "a3\ui_f\data\gui\rsc\rscdisplayarcademap\icon_exit_cross_ca.paa";
    colorBackground[] = {0,0,0,0};
    colorFocused[] = {0,0,0,0};
};