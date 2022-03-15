// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
    // Load all the vehicles
    Vehicle_LoadData();

    Group_SetCommand(gAdmin, YCMD:giveveh, ALLOW);
    return true;
}