// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
    // Let's create our textdraws.
    CreateGlobalLoginTextDraws();
	// Create a group for people logged in.
	gGroupLoggedIn = Group_Create();
	// Disable all commands by default.
	Group_SetGlobalCommandDefault(UNDEF);
    return true;
}

hook OnGameModeExit()
{
    // Destroy textdraws as they are not needed anymore.
    User_DestroyGlobalTextDraws();
    return true;
}

hook OnPlayerConnect(playerid)
{
    gUserInfo[playerid][E_USER_DATA_REGISTERED] = false;
    // Set player color
    SetPlayerColor(playerid, 0xBFFFBC00);
    // Start the loading music
    PlayAudioStreamForPlayer(playerid, "https://redwoodv.net/music/redwood.mp3");
    // Check if users nickname is the right format
    if (User_IsRpNickname(User_GetName(playerid)))
    {
        // Create the textdraws for the player.
        CreatePlayerLoginTextDraws(playerid);
        // Call function to check if their account exists
        User_DoesAccountExist(playerid);
    } else {
        SendErrorMessage(playerid, "You do not seem to have a roleplay nickname. Please use the right format - Name_Lastname.");
        User_DelayedKick(playerid);
        return 0;
    }
    // Clear the chat for esthetics
    for (new i = 0; i < 100; i ++)
    {
        SendClientMessage(playerid, -1, "");
	}
    // Send Welcoming Message
    SendServerMessage(playerid, "Welcome to Narcotic Roleplay.");
    SendServerMessage(playerid, "This is a heavy RP server. Explicit content may be present.");
    return true;
}

hook OnPlayerSpawn(playerid)
{
    // We stop the loading music when the player spawns in.
    StopAudioStreamForPlayer(playerid);
    return true;
}

hook OnPlayerDisconnect(playerid, reason)
{
    // Destroy textdraws, not needed anymore.
    User_DestroyPlayerTextDraws(playerid);
    // Let's save the user data.
    User_Save(playerid);
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

hook OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    new string[512]; //Adapt the size..
    if(clickedid == GlobalLoginTextDraw[11])
    {   
        //About us Button
        strcat(string,"{FF0000}About us:{FFFFFF}\n\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        ShowPlayerDialog(playerid, D_About, DIALOG_STYLE_MSGBOX, "About us", string, "Ok", "");
    }
    if(clickedid == GlobalLoginTextDraw[12])
    {
        //Rules Button
        strcat(string,"{FF0000}Rules:{FFFFFF}\n\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        ShowPlayerDialog(playerid, D_Rules, DIALOG_STYLE_MSGBOX, "Our Rules", string, "Ok", "");
    }
    if(clickedid == GlobalLoginTextDraw[13])
    {
        //Credits Button
        strcat(string,"{FF0000}Credits:{FFFFFF}\n\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        strcat(string,"< Your Text here.. >\n");
        ShowPlayerDialog(playerid, D_Credits, DIALOG_STYLE_MSGBOX, "Credits", string, "Ok", "");
    }
    return true;
}

hook OnPlayerClickPlayerTD(playerid, PlayerText:playertextid)
{
    if(playertextid == PlayerLoginTextDraw[playerid][0])
    {
        inline const AccountExists()
        {
            cache_get_value_name(0, "Hash", gUserInfo[playerid][E_USER_DATA_HASH], 65);

            if(gUserInfo[playerid][E_USER_DATA_REGISTERED] == true)
            {
                inline const AccountLogin(response, listitem, string:inputtext[])
                {
                    #pragma unused listitem
                    // If player closes dialog
                    if(!response)
                    {
                        // Kick him
                        User_DelayedKick(playerid);
                        return true;
                    }
                    else
                    {
                        inline const CheckHash(bool:correct)
                        {
                            // If the password is correct
                            if(correct)
                            {
                                // Login him
                                User_Login(playerid);
                            }
                            else
                            {
                                // Otherwise they've to enter pass again
                                Dialog_ShowCallback(playerid, using inline AccountLogin, DIALOG_STYLE_PASSWORD, "Login", "The password you entered is incorrect.", "Confirm", "Cancel");
                            }
                        }
                        // Check player password
                        BCrypt_CheckInline(inputtext, gUserInfo[playerid][E_USER_DATA_HASH], using inline CheckHash);
                    }
                }
                // Call inline dialog for login
                Dialog_ShowCallback(playerid, using inline AccountLogin, DIALOG_STYLE_PASSWORD, "Login", "Welcome back! Enter your password.", "Confirm", "Cancel");
            }
            else
            {
                inline const AccountDoenstExists(response, listitem, string:inputtext[])
                {
                    #pragma unused listitem
                    // If player closes dialog
                    if(!response)
                    {
                        // Kick him
                        User_DelayedKick(playerid);
                        return true;
                    }
                    else
                    {
                        // If player didn't enter any pass, or length of pass is below or equal to 4
                        if(isnull(inputtext) || strlen(inputtext) <= 4)
                        {
                            // They've to enter pass again
                            Dialog_ShowCallback(playerid, using inline AccountDoenstExists, DIALOG_STYLE_PASSWORD, "Register", "Welcome to Narcotic! Enter a password to get started.", "Confirm", "Cancel");
                            return true;
                        }
                        inline const HashPassword(string:result[])
                        {
                            gUserInfo[playerid][E_USER_DATA_REGISTERED] = true;
                            // Thread query insert player acc in db
                            mysql_tquery(gHandler, va_return("INSERT INTO users(Name, Hash) VALUES('%q', '%q')", ReturnPlayerName(playerid), result));
                            // Check account existance again -> Let them login this time
                            User_DoesAccountExist(playerid);
                        }
                        // Hash pass
                        BCrypt_HashInline(inputtext, _, using inline HashPassword);
                    }
                }
                // Show register dialog
                Dialog_ShowCallback(playerid, using inline AccountDoenstExists, DIALOG_STYLE_PASSWORD, "Register", "Welcome to Narcotic! Enter a password to get started.", "Confirm", "Cancel");
            }
        }
        // Thread query select player's hash, check if the account exists
        MySQL_TQueryInline(gHandler, using inline AccountExists, "SELECT Hash FROM users WHERE Name = '%e'", ReturnPlayerName(playerid));
    }
    return false;
}

hook OnPlayerRequestSpawn(playerid)
{
    SendErrorMessage(playerid, "You cannot do that!");
    return false;
}