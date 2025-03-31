// User Commands

CMD:changepass(playerid, params[])
{
    if (!gUserInfo[playerid][E_USER_DATA_REGISTERED])
        return SendErrorMessage(playerid, "You are not logged in.");

    new oldPass[64], newPass[64];
    if (sscanf(params, "s[64]s[64]", oldPass, newPass))
        return SendUsageMessage(playerid, "/changepass <old> <new>");

    if (strlen(newPass) < 6)
        return SendErrorMessage(playerid, "New password must be at least 6 characters.");

    // Inline bcrypt check
    inline const VerifyOldPass(bool:isValid)
    {
        if (!isValid)
            return SendErrorMessage(playerid, "Old password is incorrect.");

        // Inline bcrypt hash
        inline const HashNewPass(string:newHash[])
        {
            mysql_tquery(gHandler,
                va_return("UPDATE users SET Hash = '%q' WHERE ID = %d",
                    newHash, gUserInfo[playerid][E_USER_DATA_ID]
                ));

            // Update in-memory value too
            format(gUserInfo[playerid][E_USER_DATA_HASH], 65, newHash);
            SendInfoMessage(playerid, "Password updated successfully.");
        }

        BCrypt_HashInline(newPass, _, using inline HashNewPass);
    }

    // Check old password against current hash
    BCrypt_CheckInline(oldPass, gUserInfo[playerid][E_USER_DATA_HASH], using inline VerifyOldPass);
    return 1;
}

CMD:logout(playerid, params[])
{
    if (!gUserInfo[playerid][E_USER_DATA_REGISTERED])
        return SendErrorMessage(playerid, "You are not logged in.");

    // Save position + state
    User_Save(playerid);

    // Reset all data
    User_ResetVariables(playerid);

    // Reset world state
    TogglePlayerControllable(playerid, false);
    SetCameraBehindPlayer(playerid);
    SetPlayerPos(playerid, 0.0, 0.0, -10.0);
    SetPlayerVirtualWorld(playerid, 999);
    SetPlayerInterior(playerid, 0);
    SetPlayerHealth(playerid, 100.0);
    SetPlayerColor(playerid, 0xBFFFBC00);

    // Re-enable login UI
    User_ShowLoginTextDraws(playerid);
    User_DoesAccountExist(playerid);

    // Play login screen audio again
    PlayAudioStreamForPlayer(playerid, "https://redwoodv.net/music/redwood.mp3");

    SendServerMessage(playerid, "You have been successfully logged out.");
    return 1;
}

CMD:myid(playerid, params[])
{
    if (!gUserInfo[playerid][E_USER_DATA_REGISTERED])
        return SendErrorMessage(playerid, "You are not logged in.");

    va_SendClientMessage(playerid, X11_LIGHT_YELLOW, "[ID] Your account ID is: %d", gUserInfo[playerid][E_USER_DATA_ID]);
    return 1;
}

CMD:myrank(playerid, params[])
{
    if (!gUserInfo[playerid][E_USER_DATA_REGISTERED])
        return SendErrorMessage(playerid, "You are not logged in.");

    new rank = gUserInfo[playerid][E_USER_DATA_RANK];
    if (rank <= 0) return SendInfoMessage(playerid, "You are not staff.");

    va_SendClientMessage(playerid, X11_LIGHT_YELLOW, "[Rank] Your staff rank is: %d", rank);
    return 1;
}

CMD:savepos(playerid, params[])
{
    if (!gUserInfo[playerid][E_USER_DATA_REGISTERED])
        return SendErrorMessage(playerid, "You are not logged in.");

    User_Save(playerid);
    SendServerMessage(playerid, "Your position has been saved.");
    return 1;
}

CMD:whereami(playerid, params[])
{
    new Float:x, Float:y, Float:z, Float:a;
    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);

    va_SendClientMessage(playerid, X11_LIGHT_SKY_BLUE,
        "[Pos] X: %.2f | Y: %.2f | Z: %.2f | A: %.2f", x, y, z, a);
    return 1;
}

CMD:myname(playerid, params[])
{
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));

    va_SendClientMessage(playerid, X11_LIGHT_YELLOW, "[Name] Your character name is: %s", name);
    return 1;
}

CMD:respawnme(playerid, params[])
{
    if (!gUserInfo[playerid][E_USER_DATA_REGISTERED])
        return SendErrorMessage(playerid, "You are not logged in.");

    SendServerMessage(playerid, "You have been respawned.");
    SpawnPlayer(playerid);
    return 1;
}

CMD:lastpos(playerid, params[])
{
    if (!gUserInfo[playerid][E_USER_DATA_REGISTERED])
        return SendErrorMessage(playerid, "You are not logged in.");

    va_SendClientMessage(playerid, X11_LIGHT_YELLOW,
        "[Last Saved Pos] X: %.2f | Y: %.2f | Z: %.2f | A: %.2f",
        gUserInfo[playerid][E_USER_DATA_POS_X],
        gUserInfo[playerid][E_USER_DATA_POS_Y],
        gUserInfo[playerid][E_USER_DATA_POS_Z],
        gUserInfo[playerid][E_USER_DATA_POS_A]
    );
    return 1;
}
