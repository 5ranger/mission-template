#include "uiBaseClasses.hpp"
#include "\a3\ui_f\hpp\definecommongrids.inc"

class x5r_MissionSwitchDialog
{
    idd = 9000;
    movingEnable = 0;
    enableSimulation = 1;

    class controls
    {
        class Background: x5r_RscText
        {
            x = -16 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
            y = -8 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
            w = 32 * GUI_GRID_CENTER_W;
            h = 18 * GUI_GRID_CENTER_H;
            colorBackground[] = {0,0,0,0.7};
        };
        class Title: x5r_RscText
        {
            text = "Mission Switch";
            x = -16 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
            y = -9 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
            w = 32 * GUI_GRID_CENTER_W;
            h = 1.5 * GUI_GRID_CENTER_H;
            colorBackground[] = {0.1,0.1,0.1,1};
        };
        class Mission1: x5r_RscButton
        {
            text = "5r_mission_iutr_medical_amb_xing.dagger_island_summer";
            x = -15 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
            y = -6.5 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
            w = 30 * GUI_GRID_CENTER_W;
            h = 2 * GUI_GRID_CENTER_H;
            action = "['j7olCY0C','#mission 5r_mission_iutr_medical_amb_xing.dagger_island_summer'] remoteExec ['serverCommand',2]; closeDialog 0;";
        };
        class Mission2: x5r_RscButton
        {
            text = "5r_mission_training.dagger_island_summer";
            x = -15 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
            y = -3.5 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
            w = 30 * GUI_GRID_CENTER_W;
            h = 2 * GUI_GRID_CENTER_H;
            action = "['j7olCY0C','#mission 5r_mission_training.dagger_island_summer'] remoteExec ['serverCommand',2]; closeDialog 0;";
        };
        class CustomEdit: x5r_RscEdit
        {
            idc = 9003;
            x = -15 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
            y = 4 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
            w = 30 * GUI_GRID_CENTER_W;
            h = 2 * GUI_GRID_CENTER_H;
        };
        class LoadCustom: x5r_RscButton
        {
            text = "Load Custom";
            x = -15 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
            y = 7 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
            w = 30 * GUI_GRID_CENTER_W;
            h = 2 * GUI_GRID_CENTER_H;
            action = "private _display = findDisplay 9000; private _strPrefix = '#mission '; private _mission = ctrlText (_display displayCtrl 9003); if (_mission isEqualTo '') exitWith {}; ['j7olCY0C', (_strPrefix + _mission)] remoteExec ['serverCommand',2]; closeDialog 0;";
        };
        class CloseButton: x5r_RscButton
        {
            text = "a3\ui_f\data\gui\rsc\rscdisplayarcademap\icon_exit_cross_ca.paa";
            x = 14.8 * GUI_GRID_CENTER_W + GUI_GRID_CENTER_X;
            y = -8.8 * GUI_GRID_CENTER_H + GUI_GRID_CENTER_Y;
            w = 1 * GUI_GRID_CENTER_W;
            h = 1 * GUI_GRID_CENTER_H;
            style = 48;
            colorBackground[] = {0,0,0,0};
            colorActive[] = {1,1,1,0.8};
            action = "closeDialog 0;";
        };
    };
};
