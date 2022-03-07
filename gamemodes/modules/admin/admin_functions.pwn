Admin_SetMod(playerid)
{
    // Add the player to the group.
    SendClientMessage(playerid, X11_RED, "[Server]:"WHITE" Welcome back your current rank is: Moderator!");
    gMod += playerid;
    return true;
}

Admin_SetAdmin(playerid)
{
    // Add the player to the group.
    SendClientMessage(playerid, X11_RED, "[Server]:"WHITE" Welcome back your current rank is: Administrator!");
    gAdmin += playerid;
    return true;
}

Admin_StaffGroup(playerid)
{
    if (User_GetRank(playerid) == 1)
    {
        Admin_SetMod(playerid);
    }

    if (User_GetRank(playerid) == 2)
    {
        Admin_SetAdmin(playerid);
    }
    return true;
}