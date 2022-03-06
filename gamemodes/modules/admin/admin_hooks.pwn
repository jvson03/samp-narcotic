// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
	// Create a group for administrators.
	gAdmin = Group_Create();

    // Create a group for moderators.
    gMod = Group_Create();

	// Enable the commands only for gGroupLoggedIn.
	Group_SetCommand(gAdmin, YCMD:admin, ALLOW);
    Group_SetCommand(gMod, YCMD:mod, ALLOW);
    return true;
}