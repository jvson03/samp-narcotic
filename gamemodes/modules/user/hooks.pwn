// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
    gHandler = mysql_connect_file(); // Try establishing connection from scriptfiles\\mysql.ini

    if(mysql_errno(gHandler)) // If there has been issue establishing connection
    {
        print("[MySQL - ERROR] Connection couldn't be established with the MySQL database!"); // Print that there has been one
        return SendRconCommand("exit"); // Close server.exe
    }
    print("[MySQL - SUCCESS] Connection has been successfully established!"); // Otherwise print that there has been no issues

    return 1;
}

hook OnPlayerConnect(playerid)
{
    User_DoesAccountExist(playerid); // Call function to check if their account exists
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    User_ResetVariables(playerid); // Reset variables when player disconnects
    return 1;
}