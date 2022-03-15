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
        print("[MySQL - ERROR]: Connection couldn't be established with the MySQL database!");
        return SendRconCommand("exit"); // Close server.exe
    }
    // Otherwise print that there has been no issues
    print("[MySQL - SUCCESS]: Connection has been successfully established!");
    return true;
}