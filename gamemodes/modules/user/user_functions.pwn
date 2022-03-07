// User Module | Functions

User_GroupLoggedIn(playerid)
{
    // Add the player to the group - they can now use commands.
    gGroupLoggedIn += playerid;
    return true;
}

User_DoesAccountExist(playerid)
{
    inline const DoesAccountExist()
    {
        new
            // Declare rows
            lRows = cache_num_rows();
        
        // If there's any rows - account exists
        if(lRows)
        {
            // Store player hash into variable
            cache_get_value_name(0, "Hash", gPlayerInfo[playerid][E_PLAYER_DATA_HASH], 65);

            inline const AccountExists(response, listitem, string:inputtext[])
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
                            Dialog_ShowCallback(playerid, using inline AccountExists, DIALOG_STYLE_PASSWORD, "Login", "The password you entered is incorrect.", "Confirm", "Cancel");
                        }
                    }
                    // Check player password
                    BCrypt_CheckInline(inputtext, gPlayerInfo[playerid][E_PLAYER_DATA_HASH], using inline CheckHash);
                }
            }
            // Call inline dialog for login
            Dialog_ShowCallback(playerid, using inline AccountExists, DIALOG_STYLE_PASSWORD, "Login", "Welcome back! Enter your password.", "Confirm", "Cancel");
        }
        else // If account doesn't exist
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
                        Dialog_ShowCallback(playerid, using inline AccountDoenstExists, DIALOG_STYLE_PASSWORD, "Register", "Welcome to Redwood! Enter a password to get started.", "Confirm", "Cancel");
                        return true;
                    }
                    inline const HashPassword(string:result[])
                    {
                        // Thread query insert player acc in db
                        mysql_tquery(gHandler, va_return("INSERT INTO players(Name, Hash) VALUES('%q', '%q')", ReturnPlayerName(playerid), result));
                        // Check account existance again -> Let them login this time
                        User_DoesAccountExist(playerid);
                    }
                    // Hash pass
                    BCrypt_HashInline(inputtext, _, using inline HashPassword);
                }
            }
            // Show register dialog
            Dialog_ShowCallback(playerid, using inline AccountDoenstExists, DIALOG_STYLE_PASSWORD, "Register", "Welcome to Redwood! Enter a password to get started.", "Confirm", "Cancel");
        }
    }
    // Thread query select player's hash, check if the account exists
    MySQL_TQueryInline(gHandler, using inline DoesAccountExist, "SELECT Hash FROM players WHERE Name = '%e'", ReturnPlayerName(playerid));
    return true;
}

User_Login(playerid)
{
    inline const LoadAccount()
    {
        new
            // Declare rows
            lRows = cache_num_rows();
        
        // If there's no rows -> SUS
        if(!lRows)
        {
            // Perhaps the acc got deleted? Something God knows happened!
            SendClientMessage(playerid, X11_RED, "[Error]:"WHITE" There has been an error with your account, perhaps it's deleted?");
            // They'll have to either login or register
            return User_DoesAccountExist(playerid);
        }
        else // Otherwise
        {
            // Load data
            cache_get_value_name_int(0, "ID", gPlayerInfo[playerid][E_PLAYER_DATA_ID]);
            cache_get_value_name_int(0, "Rank", gPlayerInfo[playerid][E_PLAYER_DATA_RANK]);
            // Give perms if needed
            Admin_StaffGroup(playerid);
            // Show msg that they successfully logged in
            SendClientMessage(playerid, X11_YELLOW, "[Server]:"WHITE" Your account has been successfully loaded. Welcome back!");
            // For test -> To check if works
            // va_SendClientMessage(playerid, X11_YELLOW, "[Server]"WHITE" Your SQL ID: %i.", gPlayerInfo[playerid][E_PLAYER_ID]);
            // Spawn info
            SetSpawnInfo(playerid, 0, 299, 0.0, 0.0, 5.0, 0.0, 0, 0, 0, 0, 0, 0);
            // Spawn
            SpawnPlayer(playerid);
        }
    }
    // Give everyone the logged in group
    User_GroupLoggedIn(playerid);
    // Select everything from db
    MySQL_TQueryInline(gHandler, using inline LoadAccount, "SELECT * FROM players WHERE Name = '%e'", ReturnPlayerName(playerid));
    return true;
}

void:User_ResetVariables(playerid)
{
    gPlayerInfo[playerid][E_PLAYER_DATA_ID] = 0;
    gPlayerInfo[playerid][E_PLAYER_DATA_RANK] = 0;
    gPlayerInfo[playerid][E_PLAYER_DATA_HASH][0] = EOS;
}

User_DelayedKick(playerid)
{
    inline const KickPlayer()
    {
        // Kick player when the timer's called
        Kick(playerid);
    }
    // Inline timer, called after half second, no repeat
    return Timer_CreateCallback(using inline KickPlayer, 500, 1);
}