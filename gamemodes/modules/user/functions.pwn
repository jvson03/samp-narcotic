// User Module | Functions

// Returns the player name.
User_GetName(playerid)
{
    new string[MAX_PLAYER_NAME];
    GetPlayerName(playerid, string, MAX_PLAYER_NAME);
    return string;
}

User_SetName(playerid, name[])
{
    mysql_tquery(gHandler, va_return("UPDATE `players` SET Name = %s WHERE ID = %i", name, User_GetID(playerid)));
    return true;
}

User_DoesAccountExist(playerid)
{
    inline const DoesAccountExist()
    {
        new
            lRows = cache_num_rows(); // Declare rows
        
        if(lRows) // If there's any rows - account exists
        {
            cache_get_value_name(0, "Hash", gPlayerInfo[playerid][E_PLAYER_HASH], 65); // Store player hash into variable

            inline const AccountExists(response, listitem, string:inputtext[])
            {
                #pragma unused listitem
                if(!response) // If player closes dialog
                {
                    User_DelayedKick(playerid); // Kick him
                    return true;
                }
                else // Otherwise
                {
                    inline const CheckHash(bool:correct)
                    {
                        if(correct) // If the password is correct
                        {
                            User_Login(playerid); // Login him
                        }
                        else
                        {
                            Dialog_ShowCallback(playerid, using inline AccountExists, DIALOG_STYLE_PASSWORD, "Login", "The password you entered is incorrect.", "Confirm", "Cancel"); // Otherwise they've to enter pass again
                        }
                    }
                    BCrypt_CheckInline(inputtext, gPlayerInfo[playerid][E_PLAYER_HASH], using inline CheckHash); // Check player password
                }
            }
            Dialog_ShowCallback(playerid, using inline AccountExists, DIALOG_STYLE_PASSWORD, "Login", "Welcome back! Enter your password.", "Confirm", "Cancel"); // Call inline dialog for login
        }
        else // If account doesn't exist
        {
            inline const AccountDoenstExists(response, listitem, string:inputtext[])
            {
                #pragma unused listitem
                if(!response) // If player closes dialog
                {
                    User_DelayedKick(playerid); // Kick him
                    return true;
                }
                else // Otherwise
                {
                    if(isnull(inputtext) || strlen(inputtext) <= 4) // If player didn't enter any pass, or length of pass is below or equal to 4
                    {
                        Dialog_ShowCallback(playerid, using inline AccountDoenstExists, DIALOG_STYLE_PASSWORD, "Register", "Welcome to Redwood! Enter a password to get started.", "Confirm", "Cancel"); // They've to enter pass again
                        return true;
                    }
                    inline const HashPassword(string:result[])
                    {
                        mysql_tquery(gHandler, va_return("INSERT INTO players(Name, Hash) VALUES('%q', '%q')", ReturnPlayerName(playerid), result)); // Thread query insert player acc in db
                        User_DoesAccountExist(playerid); // Check account existance again -> Let them login this time
                    }
                    BCrypt_HashInline(inputtext, _, using inline HashPassword); // Hash pass
                }
            }
            Dialog_ShowCallback(playerid, using inline AccountDoenstExists, DIALOG_STYLE_PASSWORD, "Register", "Welcome to Redwood! Enter a password to get started.", "Confirm", "Cancel"); // Show register dialog
        }
    }
    MySQL_TQueryInline(gHandler, using inline DoesAccountExist, "SELECT Hash FROM players WHERE Name = '%e'", ReturnPlayerName(playerid)); // Thread query select player's hash, check if the account exists
    return true;
}

User_Login(playerid)
{
    inline const LoadAccount()
    {
        new
            lRows = cache_num_rows(); // Declare rows
        
        if(!lRows) // If there's no rows -> SUS
        {
            SendClientMessage(playerid, X11_RED, "[Error]"WHITE" There has been an error with your account, perhaps it's deleted?"); // Perhaps the acc got deleted? Something God knows happened!
            return User_DoesAccountExist(playerid); // They'll have to either login or register
        }
        else // Otherwise
        {
            cache_get_value_name_int(0, "ID", gPlayerInfo[playerid][E_PLAYER_ID]); // Load data
            SendClientMessage(playerid, X11_YELLOW, "[Server]"WHITE" Your account has been successfully loaded."); // Show msg that they successfully logged in
            va_SendClientMessage(playerid, X11_YELLOW, "[Server]"WHITE" Your SQL ID: %i.", gPlayerInfo[playerid][E_PLAYER_ID]); // For test -> To check if works
            SetSpawnInfo(playerid, 0, 299, 0.0, 0.0, 5.0, 0.0, 0, 0, 0, 0, 0, 0); // Spawn info
            SpawnPlayer(playerid); // Spawn
        }
    }
    MySQL_TQueryInline(gHandler, using inline LoadAccount, "SELECT * FROM players WHERE Name = '%e'", ReturnPlayerName(playerid)); // Select everything from db
    return true;
}

void:User_ResetVariables(playerid)
{
    gPlayerInfo[playerid][E_PLAYER_ID] = 0;
    gPlayerInfo[playerid][E_PLAYER_HASH][0] = EOS;
}

User_DelayedKick(playerid)
{
    inline const KickPlayer()
    {
        Kick(playerid); // Kick player when the timer's called
    }
    return Timer_CreateCallback(using inline KickPlayer, 500, 1); // Inline timer, called after half second, no repeat
}