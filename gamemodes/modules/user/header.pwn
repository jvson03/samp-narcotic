// Header

enum E_PLAYER_DATA
{
    E_PLAYER_ID,
    E_PLAYER_HASH[65]
};

new
    MySQL:gHandler,
    gPlayerInfo[MAX_PLAYERS][E_PLAYER_DATA];