// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
    // Load all the vehicles
    Vehicle_LoadData();
    return true;
}