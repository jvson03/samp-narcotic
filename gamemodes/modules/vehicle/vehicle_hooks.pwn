// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
    // Load all the vehicles
    Vehicle_LoadData();

    Group_SetCommand(gAdmin, YCMD:giveveh, ALLOW);
    Group_SetCommand(gAdmin, YCMD:deleteveh, ALLOW);
    Group_SetCommand(gMod, YCMD:veh, ALLOW);
    Group_SetCommand(gAdmin, YCMD:veh, ALLOW);
    return true;
}