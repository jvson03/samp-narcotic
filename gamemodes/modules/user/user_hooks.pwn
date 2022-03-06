// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
    // Try establishing connection from scriptfiles\\mysql.ini
    gHandler = mysql_connect_file();

    // If there has been issue establishing connection
    if(mysql_errno(gHandler))
    {
        // Print that there has been one
        print("[MySQL - ERROR] Connection couldn't be established with the MySQL database!");
        return SendRconCommand("exit"); // Close server.exe
    }
    // Otherwise print that there has been no issues
    print("[MySQL - SUCCESS] Connection has been successfully established!");

	// Create a group for people logged in.
	gGroupLoggedIn = Group_Create();

	// Disable all commands by default.
	Group_SetGlobalCommandDefault(UNDEF);

	// Enable the commands only for gGroupLoggedIn.
	Group_SetCommand(gGroupLoggedIn, YCMD:ann, ALLOW);
    Group_SetCommand(gGroupLoggedIn, YCMD:announce, ALLOW);
    return true;
}

hook OnPlayerConnect(playerid)
{
    // Call function to check if their account exists
    User_DoesAccountExist(playerid);
    return true;
}

hook OnPlayerDisconnect(playerid, reason)
{
    // Reset variables when player disconnects
    User_ResetVariables(playerid);
    return true;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
    SpawnPlayer(playerid); // Spawn
    SetPlayerHealth(playerid, 100);
    return true;
}