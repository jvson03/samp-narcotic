// Header

enum E_PLAYER_DATA
{
    E_PLAYER_ID,
    E_PLAYER_HASH[65]
};

new
    MySQL:gHandler,
    gPlayerInfo[MAX_PLAYERS][E_PLAYER_DATA],
    Group:gGroupLoggedIn;

// Getters

User_GetID(playerid)
{
    return gPlayerInfo[playerid][E_PLAYER_ID];
}

User_GetName(playerid)
{
    new string[MAX_PLAYER_NAME];
    GetPlayerName(playerid, string, MAX_PLAYER_NAME);
    return string;
}