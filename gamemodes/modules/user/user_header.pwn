// Header

enum E_USER_DATA
{
    E_USER_DATA_ID,
    E_USER_DATA_HASH[65],
    E_USER_DATA_RANK,

    Float:E_USER_DATA_POS_X,
    Float:E_USER_DATA_POS_Y,
    Float:E_USER_DATA_POS_Z,
    Float:E_USER_DATA_POS_A
};

new
    gUserInfo[MAX_PLAYERS][E_USER_DATA],
    Group:gGroupLoggedIn;

// Getters

User_GetID(playerid)
{
    return gUserInfo[playerid][E_USER_DATA_ID];
}

User_GetName(playerid)
{
    new string[MAX_PLAYER_NAME];
    GetPlayerName(playerid, string, MAX_PLAYER_NAME);
    return string;
}

User_GetRank(playerid)
{
    return gUserInfo[playerid][E_USER_DATA_RANK];
}

// User_GetRoleplayName(playerid)
// {
//     new name[24];
//     GetPlayerName(playerid,name,24);
//     for(new i=0;i<strlen(name);i++) if(name[i]=='_')
//     { 
//         name[i]=' ';
//         return name;
//     }
// }