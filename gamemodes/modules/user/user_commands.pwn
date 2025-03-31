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
