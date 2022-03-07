// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
	// Create a group for administrators.
	gAdmin = Group_Create();

    // Create a group for moderators.
    gMod = Group_Create();

    // Enable the commands only for admins;
	Group_SetCommand(gMod, YCMD:ann, ALLOW);
    Group_SetCommand(gMod, YCMD:announce, ALLOW);
    Group_SetCommand(gAdmin, YCMD:ann, ALLOW);
    Group_SetCommand(gAdmin, YCMD:announce, ALLOW);
    return true;
}