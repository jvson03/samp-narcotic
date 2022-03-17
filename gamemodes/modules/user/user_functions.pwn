// User Module | Functions

User_GroupLoggedIn(playerid)
{
    // Add the player to the group - they can now use commands.
    gGroupLoggedIn += playerid;
    return true;
}

stock User_IsRpNickname(const nickname[])
{
    static Regex:regex;
    if (!regex) regex = Regex_New("[A-Z][a-z]+_[A-Z][a-z]+");

    return Regex_Check(nickname, regex);
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
            // Stuff goes here
            User_RegisteredText(playerid);
            User_ShowLoginTextDraws(playerid);
            pRegistered[playerid] == true;
        }
        else // If account doesn't exist
        {
            // Stuff goes
            User_NotRegisteredText(playerid);
            User_ShowLoginTextDraws(playerid);
            pRegistered[playerid] == false;
        }
    }
    // Thread query
    MySQL_TQueryInline(gHandler, using inline DoesAccountExist, "SELECT Hash FROM users WHERE Name = '%e'", ReturnPlayerName(playerid));
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
            SendErrorMessage(playerid, "There has been an error with your account, perhaps it's deleted?");
            // They'll have to either login or register
            return User_DoesAccountExist(playerid);
        }
        else // Otherwise
        {
            // Load data
            cache_get_value_name_int(0, "ID", gUserInfo[playerid][E_USER_DATA_ID]);
            cache_get_value_name(0, "Hash", gUserInfo[playerid][E_USER_DATA_HASH], 65);
            cache_get_value_name_int(0, "Rank", gUserInfo[playerid][E_USER_DATA_RANK]);
            cache_get_value_name_float(0, "PosX", gUserInfo[playerid][E_USER_DATA_POS_X]);
            cache_get_value_name_float(0, "PosY", gUserInfo[playerid][E_USER_DATA_POS_Y]);
            cache_get_value_name_float(0, "PosZ", gUserInfo[playerid][E_USER_DATA_POS_Z]);
            cache_get_value_name_float(0, "PosA", gUserInfo[playerid][E_USER_DATA_POS_A]);
            // Give perms if needed
            Admin_StaffGroup(playerid);
            // Play a sound.
            PlayerPlaySound(playerid, 1057 , 0.0, 0.0, 0.0);
            // Hide the textdraws as they are not needed anymore.
            User_HideLoginTextDraws(playerid);
            // Show msg that they successfully logged in
            SendServerMessage(playerid, "Your account has been successfully loaded. Welcome back!");
            // va_SendClientMessage(playerid, X11_YELLOW, "[Server]"WHITE" Your SQL ID: %i.", gUserInfo[playerid][E_PLAYER_ID]);
            // Spawn info
            SetSpawnInfo(playerid, 0, 299, gUserInfo[playerid][E_USER_DATA_POS_X], gUserInfo[playerid][E_USER_DATA_POS_Y], gUserInfo[playerid][E_USER_DATA_POS_Z], gUserInfo[playerid][E_USER_DATA_POS_A], 0, 0, 0, 0, 0, 0);
            // Spawn
            SpawnPlayer(playerid);
        }
    }
    // Give everyone the logged in group
    User_GroupLoggedIn(playerid);
    // Select everything from db
    MySQL_TQueryInline(gHandler, using inline LoadAccount, "SELECT * FROM users WHERE Name = '%e'", ReturnPlayerName(playerid));
    return true;
}

User_Save(playerid)
{
    GetPlayerPos(playerid, gUserInfo[playerid][E_USER_DATA_POS_X], gUserInfo[playerid][E_USER_DATA_POS_Y], gUserInfo[playerid][E_USER_DATA_POS_Z]);
    GetPlayerFacingAngle(playerid, gUserInfo[playerid][E_USER_DATA_POS_A]);
    
    mysql_tquery(gHandler, va_return("UPDATE users SET PosX = '%.4f', PosY = '%.4f', PosZ = '%.4f', PosA = '%.4f' WHERE ID = '%d'",
        gUserInfo[playerid][E_USER_DATA_POS_X],
        gUserInfo[playerid][E_USER_DATA_POS_Y],
        gUserInfo[playerid][E_USER_DATA_POS_Z],
        gUserInfo[playerid][E_USER_DATA_POS_A],
        gUserInfo[playerid][E_USER_DATA_ID]
    ));

    printf("Saved User : %s", User_GetName(playerid));
    return true;
}

void:User_ResetVariables(playerid)
{
    gUserInfo[playerid][E_USER_DATA_ID] = 0;
    gUserInfo[playerid][E_USER_DATA_RANK] = 0;
    gUserInfo[playerid][E_USER_DATA_HASH][0] = EOS;
    gUserInfo[playerid][E_USER_DATA_POS_X] = 0.0;
    gUserInfo[playerid][E_USER_DATA_POS_Y] = 0.0;
    gUserInfo[playerid][E_USER_DATA_POS_Z] = 0.0;
    gUserInfo[playerid][E_USER_DATA_POS_A] = 0.0;
    pRegistered[playerid] == false;
}

User_DelayedKick(playerid)
{
    inline const KickPlayer()
    {
        // Kick player when the timer's called
        Kick(playerid);
    }
    // Inline timer, called after a second, no repeat
    return Timer_CreateCallback(using inline KickPlayer, 1000, 1);
}

User_RegisteredText(playerid)
{
    pRegistered[playerid] = true;
    PlayerTextDrawSetString(playerid, PlayerLoginTextDraw[playerid][3], !"This name seem to be ~g~registered~w~.~n~You can now ~g~login~w~ to your Account.");
    PlayerTextDrawSetString(playerid, PlayerLoginTextDraw[playerid][0], !"      Login"); 
    PlayerTextDrawSetString(playerid, PlayerLoginTextDraw[playerid][1], !"          Welcome back!"); 
}

User_NotRegisteredText(playerid)
{
    pRegistered[playerid] = false;
    new str[128]; //Adapt the size..
    PlayerTextDrawSetString(playerid, PlayerLoginTextDraw[playerid][3], !"This name is ~g~not~w~ registered.~n~You can now create an ~g~Account.");
    PlayerTextDrawSetString(playerid, PlayerLoginTextDraw[playerid][0], !"   Register");
    format(str, sizeof(str),"Welcome to %s", LT_ServerName);
    PlayerTextDrawSetString(playerid, PlayerLoginTextDraw[playerid][1], str);
}

User_ShowLoginTextDraws(playerid)
{
    for(new i; i < sizeof(PlayerLoginTextDraw[]); i++)
    {
        PlayerTextDrawShow(playerid, PlayerLoginTextDraw[playerid][i]);
    }

    for(new i; i<sizeof(GlobalLoginTextDraw); i++)
    {
        TextDrawShowForPlayer(playerid, GlobalLoginTextDraw[i]);
    }

    SelectTextDraw(playerid, TextDrawHoverColor);
    TextDrawBoxColor(GlobalLoginTextDraw[2], LoginTextDrawColor);
    TextDrawBoxColor(GlobalLoginTextDraw[4], LoginTextDrawColor);
    TextDrawBoxColor(GlobalLoginTextDraw[6], LoginTextDrawColor);
    TextDrawBoxColor(GlobalLoginTextDraw[8], LoginTextDrawColor);
    TextDrawBoxColor(GlobalLoginTextDraw[10], LoginTextDrawColor);
}

User_HideLoginTextDraws(playerid)
{
    for(new i; i < sizeof(PlayerLoginTextDraw[]); i++)
    {
        PlayerTextDrawHide(playerid, PlayerLoginTextDraw[playerid][i]);
    }

    for(new i; i<sizeof(GlobalLoginTextDraw); i++)
    {
        TextDrawHideForPlayer(playerid, GlobalLoginTextDraw[i]);
    }

    CancelSelectTextDraw(playerid);
}

User_DestroyPlayerTextDraws(playerid)
{
    for(new i; i < sizeof(PlayerLoginTextDraw[]); i++)
    {
        PlayerTextDrawDestroy(playerid, PlayerLoginTextDraw[playerid][i]);
    }

    CancelSelectTextDraw(playerid);
}

User_DestroyGlobalTextDraws()
{
    for(new i; i<sizeof(GlobalLoginTextDraw); i++)
    {
        TextDrawDestroy(GlobalLoginTextDraw[i]);
    }
}

CreateGlobalLoginTextDraws()
{
    GlobalLoginTextDraw[0] = TextDrawCreate(169.000000, 121.000000, !"__");
    TextDrawBackgroundColor(GlobalLoginTextDraw[0], 255);
    TextDrawFont(GlobalLoginTextDraw[0], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[0], 0.500000, 26.200000);
    TextDrawColor(GlobalLoginTextDraw[0], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[0], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[0], true);
    TextDrawSetShadow(GlobalLoginTextDraw[0], 1);
    TextDrawUseBox(GlobalLoginTextDraw[0], true);
    TextDrawBoxColor(GlobalLoginTextDraw[0], 255);
    TextDrawTextSize(GlobalLoginTextDraw[0], 470.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[0], false);

    GlobalLoginTextDraw[1] = TextDrawCreate(170.000000, 123.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[1], 255);
    TextDrawFont(GlobalLoginTextDraw[1], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[1], 0.500000, 25.799999);
    TextDrawColor(GlobalLoginTextDraw[1], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[1], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[1], true);
    TextDrawSetShadow(GlobalLoginTextDraw[1], 1);
    TextDrawUseBox(GlobalLoginTextDraw[1], true);
    TextDrawBoxColor(GlobalLoginTextDraw[1], 286331391);
    TextDrawTextSize(GlobalLoginTextDraw[1], 469.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[1], false);

    GlobalLoginTextDraw[2] = TextDrawCreate(170.000000, 122.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[2], 255);
    TextDrawFont(GlobalLoginTextDraw[2], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[2], 0.500000, 1.200000);
    TextDrawColor(GlobalLoginTextDraw[2], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[2], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[2], true);
    TextDrawSetShadow(GlobalLoginTextDraw[2], 1);
    TextDrawUseBox(GlobalLoginTextDraw[2], true);
    TextDrawTextSize(GlobalLoginTextDraw[2], 469.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[2], false);

    GlobalLoginTextDraw[3] = TextDrawCreate(177.000000, 156.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[3], 255);
    TextDrawFont(GlobalLoginTextDraw[3], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[3], 0.500000, 3.700000);
    TextDrawColor(GlobalLoginTextDraw[3], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[3], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[3], true);
    TextDrawSetShadow(GlobalLoginTextDraw[3], 1);
    TextDrawUseBox(GlobalLoginTextDraw[3], true);
    TextDrawBoxColor(GlobalLoginTextDraw[3], 255);
    TextDrawTextSize(GlobalLoginTextDraw[3], 264.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[3], false);

    GlobalLoginTextDraw[4] = TextDrawCreate(178.000000, 157.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[4], 255);
    TextDrawFont(GlobalLoginTextDraw[4], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[4], 0.500000, 3.500000);
    TextDrawColor(GlobalLoginTextDraw[4], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[4], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[4], true);
    TextDrawSetShadow(GlobalLoginTextDraw[4], 1);
    TextDrawUseBox(GlobalLoginTextDraw[4], true);
    TextDrawTextSize(GlobalLoginTextDraw[4], 263.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[4], false);

    GlobalLoginTextDraw[5] = TextDrawCreate(177.000000, 206.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[5], 255);
    TextDrawFont(GlobalLoginTextDraw[5], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[5], 0.500000, 3.700000);
    TextDrawColor(GlobalLoginTextDraw[5], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[5], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[5], true);
    TextDrawSetShadow(GlobalLoginTextDraw[5], 1);
    TextDrawUseBox(GlobalLoginTextDraw[5], true);
    TextDrawBoxColor(GlobalLoginTextDraw[5], 255);
    TextDrawTextSize(GlobalLoginTextDraw[5], 264.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[5], false);

    GlobalLoginTextDraw[6] = TextDrawCreate(178.000000, 207.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[6], 255);
    TextDrawFont(GlobalLoginTextDraw[6], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[6], 0.500000, 3.500000);
    TextDrawColor(GlobalLoginTextDraw[6], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[6], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[6], true);
    TextDrawSetShadow(GlobalLoginTextDraw[6], 1);
    TextDrawUseBox(GlobalLoginTextDraw[6], true);
    TextDrawTextSize(GlobalLoginTextDraw[6], 263.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[6], false);

    GlobalLoginTextDraw[7] = TextDrawCreate(177.000000, 256.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[7], 255);
    TextDrawFont(GlobalLoginTextDraw[7], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[7], 0.500000, 3.700000);
    TextDrawColor(GlobalLoginTextDraw[7], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[7], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[7], true);
    TextDrawSetShadow(GlobalLoginTextDraw[7], 1);
    TextDrawUseBox(GlobalLoginTextDraw[7], true);
    TextDrawBoxColor(GlobalLoginTextDraw[7], 255);
    TextDrawTextSize(GlobalLoginTextDraw[7], 264.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[7], false);

    GlobalLoginTextDraw[8] = TextDrawCreate(178.000000, 257.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[8], 255);
    TextDrawFont(GlobalLoginTextDraw[8], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[8], 0.500000, 3.500000);
    TextDrawColor(GlobalLoginTextDraw[8], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[8], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[8], true);
    TextDrawSetShadow(GlobalLoginTextDraw[8], 1);
    TextDrawUseBox(GlobalLoginTextDraw[8], true);
    TextDrawTextSize(GlobalLoginTextDraw[8], 263.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[8], false);

    GlobalLoginTextDraw[9] = TextDrawCreate(177.000000, 306.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[9], 255);
    TextDrawFont(GlobalLoginTextDraw[9], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[9], 0.500000, 3.700000);
    TextDrawColor(GlobalLoginTextDraw[9], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[9], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[9], true);
    TextDrawSetShadow(GlobalLoginTextDraw[9], 1);
    TextDrawUseBox(GlobalLoginTextDraw[9], true);
    TextDrawBoxColor(GlobalLoginTextDraw[9], 255);
    TextDrawTextSize(GlobalLoginTextDraw[9], 264.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[9], false);

    GlobalLoginTextDraw[10] = TextDrawCreate(178.000000, 307.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[10], 255);
    TextDrawFont(GlobalLoginTextDraw[10], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[10], 0.500000, 3.500000);
    TextDrawColor(GlobalLoginTextDraw[10], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[10], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[10], true);
    TextDrawSetShadow(GlobalLoginTextDraw[10], 1);
    TextDrawUseBox(GlobalLoginTextDraw[10], true);
    TextDrawTextSize(GlobalLoginTextDraw[10], 263.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[10], false);

    GlobalLoginTextDraw[11] = TextDrawCreate(191.000000, 217.000000, !"   About us");
    TextDrawBackgroundColor(GlobalLoginTextDraw[11], 255);
    TextDrawFont(GlobalLoginTextDraw[11], 2);
    TextDrawLetterSize(GlobalLoginTextDraw[11], 0.189999, 1.299999);
    TextDrawTextSize( GlobalLoginTextDraw[11], 260.0, 20.0);
    TextDrawColor(GlobalLoginTextDraw[11], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[11], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[11], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[11], true);

    GlobalLoginTextDraw[12] = TextDrawCreate(202.000000, 267.000000, !" Rules");
    TextDrawBackgroundColor(GlobalLoginTextDraw[12], 255);
    TextDrawFont(GlobalLoginTextDraw[12], 2);
    TextDrawLetterSize(GlobalLoginTextDraw[12], 0.189999, 1.299999);
    TextDrawTextSize( GlobalLoginTextDraw[12], 240.0, 15.0);
    TextDrawColor(GlobalLoginTextDraw[12], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[12], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[12], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[12], true);

    GlobalLoginTextDraw[13] = TextDrawCreate(202.000000, 316.000000, !"Credits");
    TextDrawBackgroundColor(GlobalLoginTextDraw[13], 255);
    TextDrawFont(GlobalLoginTextDraw[13], 2);
    TextDrawLetterSize(GlobalLoginTextDraw[13], 0.189999, 1.299999);
    TextDrawTextSize( GlobalLoginTextDraw[13], 240.0, 15.0);
    TextDrawColor(GlobalLoginTextDraw[13], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[13], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[13], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[13], true);

    GlobalLoginTextDraw[14] = TextDrawCreate(340.000000, 155.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[14], 255);
    TextDrawFont(GlobalLoginTextDraw[14], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[14], 0.500000, 3.799999);
    TextDrawColor(GlobalLoginTextDraw[14], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[14], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[14], true);
    TextDrawSetShadow(GlobalLoginTextDraw[14], 1);
    TextDrawUseBox(GlobalLoginTextDraw[14], true);
    TextDrawBoxColor(GlobalLoginTextDraw[14], 255);
    TextDrawTextSize(GlobalLoginTextDraw[14], 460.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[14], false);

    GlobalLoginTextDraw[15] = TextDrawCreate(341.000000, 156.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[15], 255);
    TextDrawFont(GlobalLoginTextDraw[15], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[15], 0.500000, 3.599999);
    TextDrawColor(GlobalLoginTextDraw[15], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[15], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[15], true);
    TextDrawSetShadow(GlobalLoginTextDraw[15], 1);
    TextDrawUseBox(GlobalLoginTextDraw[15], true);
    TextDrawBoxColor(GlobalLoginTextDraw[15], 505290495);
    TextDrawTextSize(GlobalLoginTextDraw[15], 459.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[15], false);

    GlobalLoginTextDraw[16] = TextDrawCreate(340.000000, 206.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[16], 255);
    TextDrawFont(GlobalLoginTextDraw[16], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[16], 0.500000, 3.799999);
    TextDrawColor(GlobalLoginTextDraw[16], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[16], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[16], true);
    TextDrawSetShadow(GlobalLoginTextDraw[16], 1);
    TextDrawUseBox(GlobalLoginTextDraw[16], true);
    TextDrawBoxColor(GlobalLoginTextDraw[16], 255);
    TextDrawTextSize(GlobalLoginTextDraw[16], 460.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[16], false);

    GlobalLoginTextDraw[17] = TextDrawCreate(341.000000, 207.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[17], 255);
    TextDrawFont(GlobalLoginTextDraw[17], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[17], 0.500000, 3.599999);
    TextDrawColor(GlobalLoginTextDraw[17], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[17], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[17], true);
    TextDrawSetShadow(GlobalLoginTextDraw[17], 1);
    TextDrawUseBox(GlobalLoginTextDraw[17], true);
    TextDrawBoxColor(GlobalLoginTextDraw[17], 505290495);
    TextDrawTextSize(GlobalLoginTextDraw[17], 459.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[17], false);

    GlobalLoginTextDraw[18] = TextDrawCreate(318.000000, 203.000000, !"~<~");
    TextDrawBackgroundColor(GlobalLoginTextDraw[18], 255);
    TextDrawFont(GlobalLoginTextDraw[18], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[18], 0.539999, 3.900000);
    TextDrawColor(GlobalLoginTextDraw[18], -16776961);
    TextDrawSetOutline(GlobalLoginTextDraw[18], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[18], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[18], false);

    GlobalLoginTextDraw[19] = TextDrawCreate(340.000000, 259.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[19], 255);
    TextDrawFont(GlobalLoginTextDraw[19], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[19], 0.500000, 3.799999);
    TextDrawColor(GlobalLoginTextDraw[19], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[19], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[19], true);
    TextDrawSetShadow(GlobalLoginTextDraw[19], 1);
    TextDrawUseBox(GlobalLoginTextDraw[19], true);
    TextDrawBoxColor(GlobalLoginTextDraw[19], 255);
    TextDrawTextSize(GlobalLoginTextDraw[19], 460.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[19], false);

    GlobalLoginTextDraw[20] = TextDrawCreate(341.000000, 260.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[20], 255);
    TextDrawFont(GlobalLoginTextDraw[20], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[20], 0.500000, 3.599999);
    TextDrawColor(GlobalLoginTextDraw[20], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[20], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[20], true);
    TextDrawSetShadow(GlobalLoginTextDraw[20], 1);
    TextDrawUseBox(GlobalLoginTextDraw[20], true);
    TextDrawBoxColor(GlobalLoginTextDraw[20], 505290495);
    TextDrawTextSize(GlobalLoginTextDraw[20], 459.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[20], false);

    GlobalLoginTextDraw[21] = TextDrawCreate(340.000000, 309.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[21], 255);
    TextDrawFont(GlobalLoginTextDraw[21], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[21], 0.500000, 3.799999);
    TextDrawColor(GlobalLoginTextDraw[21], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[21], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[21], true);
    TextDrawSetShadow(GlobalLoginTextDraw[21], 1);
    TextDrawUseBox(GlobalLoginTextDraw[21], true);
    TextDrawBoxColor(GlobalLoginTextDraw[21], 255);
    TextDrawTextSize(GlobalLoginTextDraw[21], 460.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[21], false);

    GlobalLoginTextDraw[22] = TextDrawCreate(341.000000, 310.000000, !"_");
    TextDrawBackgroundColor(GlobalLoginTextDraw[22], 255);
    TextDrawFont(GlobalLoginTextDraw[22], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[22], 0.500000, 3.599999);
    TextDrawColor(GlobalLoginTextDraw[22], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[22], 0);
    TextDrawSetProportional(GlobalLoginTextDraw[22], true);
    TextDrawSetShadow(GlobalLoginTextDraw[22], 1);
    TextDrawUseBox(GlobalLoginTextDraw[22], true);
    TextDrawBoxColor(GlobalLoginTextDraw[22], 505290495);
    TextDrawTextSize(GlobalLoginTextDraw[22], 459.000000, 0.000000);
    TextDrawSetSelectable(GlobalLoginTextDraw[22], false);

    GlobalLoginTextDraw[23] = TextDrawCreate(318.000000, 152.000000, !"~<~");
    TextDrawBackgroundColor(GlobalLoginTextDraw[23], 255);
    TextDrawFont(GlobalLoginTextDraw[23], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[23], 0.539999, 3.900000);
    TextDrawColor(GlobalLoginTextDraw[23], -16776961);
    TextDrawSetOutline(GlobalLoginTextDraw[23], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[23], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[23], false);

    GlobalLoginTextDraw[24] = TextDrawCreate(318.000000, 256.000000, !"~<~");
    TextDrawBackgroundColor(GlobalLoginTextDraw[24], 255);
    TextDrawFont(GlobalLoginTextDraw[24], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[24], 0.539999, 3.900000);
    TextDrawColor(GlobalLoginTextDraw[24], -16776961);
    TextDrawSetOutline(GlobalLoginTextDraw[24], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[24], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[24], false);

    GlobalLoginTextDraw[25] = TextDrawCreate(318.000000, 306.000000, !"~<~");
    TextDrawBackgroundColor(GlobalLoginTextDraw[25], 255);
    TextDrawFont(GlobalLoginTextDraw[25], 1);
    TextDrawLetterSize(GlobalLoginTextDraw[25], 0.539999, 3.900000);
    TextDrawColor(GlobalLoginTextDraw[25], -16776961);
    TextDrawSetOutline(GlobalLoginTextDraw[25], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[25], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[25], false);

    GlobalLoginTextDraw[26] = TextDrawCreate(348.000000, 213.000000, !"Click here for useful ~g~Information~w~.~n~How the server works etc...");
    TextDrawBackgroundColor(GlobalLoginTextDraw[26], 255);
    TextDrawFont(GlobalLoginTextDraw[26], 2);
    TextDrawLetterSize(GlobalLoginTextDraw[26], 0.129997, 0.899999);
    TextDrawColor(GlobalLoginTextDraw[26], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[26], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[26], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[26], false);

    GlobalLoginTextDraw[27] = TextDrawCreate(348.000000, 266.000000, !"~w~Please read carefully all ~g~Rules.~w~~n~Behave and respect other players.");
    TextDrawBackgroundColor(GlobalLoginTextDraw[27], 255);
    TextDrawFont(GlobalLoginTextDraw[27], 2);
    TextDrawLetterSize(GlobalLoginTextDraw[27], 0.129997, 0.899999);
    TextDrawColor(GlobalLoginTextDraw[27], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[27], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[27], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[27], false);

    GlobalLoginTextDraw[28] = TextDrawCreate(348.000000, 317.000000, !"Take a look who ~g~contributed~w~ to us.~n~You won't regret it ;)");
    TextDrawBackgroundColor(GlobalLoginTextDraw[28], 255);
    TextDrawFont(GlobalLoginTextDraw[28], 2);
    TextDrawLetterSize(GlobalLoginTextDraw[28], 0.129997, 0.899999);
    TextDrawColor(GlobalLoginTextDraw[28], -1);
    TextDrawSetOutline(GlobalLoginTextDraw[28], 1);
    TextDrawSetProportional(GlobalLoginTextDraw[28], true);
    TextDrawSetSelectable(GlobalLoginTextDraw[28], false);

    TextDrawBoxColor(GlobalLoginTextDraw[2], LoginTextDrawColor);
    TextDrawBoxColor(GlobalLoginTextDraw[4], LoginTextDrawColor);
    TextDrawBoxColor(GlobalLoginTextDraw[6], LoginTextDrawColor);
    TextDrawBoxColor(GlobalLoginTextDraw[8], LoginTextDrawColor);
    TextDrawBoxColor(GlobalLoginTextDraw[10], LoginTextDrawColor);
}

CreatePlayerLoginTextDraws(playerid)
{
    new str[128];
    PlayerLoginTextDraw[playerid][0] = CreatePlayerTextDraw(playerid,192.000000, 166.000000, !"      Login");
    PlayerTextDrawBackgroundColor(playerid,PlayerLoginTextDraw[playerid][0], 255);
    PlayerTextDrawFont(playerid,PlayerLoginTextDraw[playerid][0], 2);
    PlayerTextDrawLetterSize(playerid,PlayerLoginTextDraw[playerid][0], 0.189999, 1.299999);
    PlayerTextDrawTextSize(playerid, PlayerLoginTextDraw[playerid][0], 240.0, 15.0);
    PlayerTextDrawColor(playerid,PlayerLoginTextDraw[playerid][0], -1);
    PlayerTextDrawSetOutline(playerid,PlayerLoginTextDraw[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid,PlayerLoginTextDraw[playerid][0], true);
    PlayerTextDrawSetSelectable(playerid,PlayerLoginTextDraw[playerid][0], true);

    PlayerLoginTextDraw[playerid][1] = CreatePlayerTextDraw(playerid,269.000000, 123.000000, !"Welcome to <YOUR_SERVERNAME>");
    PlayerTextDrawBackgroundColor(playerid,PlayerLoginTextDraw[playerid][1], 255);
    PlayerTextDrawFont(playerid,PlayerLoginTextDraw[playerid][1], 2);
    PlayerTextDrawLetterSize(playerid,PlayerLoginTextDraw[playerid][1], 0.140000, 0.799998);
    PlayerTextDrawColor(playerid,PlayerLoginTextDraw[playerid][1], -1);
    PlayerTextDrawSetOutline(playerid,PlayerLoginTextDraw[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid,PlayerLoginTextDraw[playerid][1], true);
    PlayerTextDrawSetSelectable(playerid,PlayerLoginTextDraw[playerid][1], false);
    format(str, sizeof(str),"Welcome to %s", LT_ServerName);
    PlayerTextDrawSetString(playerid, PlayerLoginTextDraw[playerid][1], str);

    PlayerLoginTextDraw[playerid][2] = CreatePlayerTextDraw(playerid,427.000000, 123.000000, !"00:00 Time");
    PlayerTextDrawBackgroundColor(playerid,PlayerLoginTextDraw[playerid][2], 255);
    PlayerTextDrawFont(playerid,PlayerLoginTextDraw[playerid][2], 2);
    PlayerTextDrawLetterSize(playerid,PlayerLoginTextDraw[playerid][2], 0.140000, 0.799998);
    PlayerTextDrawColor(playerid,PlayerLoginTextDraw[playerid][2], -1);
    PlayerTextDrawSetOutline(playerid,PlayerLoginTextDraw[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid,PlayerLoginTextDraw[playerid][2], true);
    PlayerTextDrawSetSelectable(playerid,PlayerLoginTextDraw[playerid][2], false);

    PlayerLoginTextDraw[playerid][3] = CreatePlayerTextDraw(playerid,346.000000, 162.000000, !"This name seem to be ~g~registered~w~.~n~You can now ~g~login~w~ to your Account.");
    PlayerTextDrawBackgroundColor(playerid,PlayerLoginTextDraw[playerid][3], 255);
    PlayerTextDrawFont(playerid,PlayerLoginTextDraw[playerid][3], 2);
    PlayerTextDrawLetterSize(playerid,PlayerLoginTextDraw[playerid][3], 0.129997, 0.899999);
    PlayerTextDrawColor(playerid,PlayerLoginTextDraw[playerid][3], -1);
    PlayerTextDrawSetOutline(playerid,PlayerLoginTextDraw[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid,PlayerLoginTextDraw[playerid][3], true);
    PlayerTextDrawSetSelectable(playerid,PlayerLoginTextDraw[playerid][3], false);
}