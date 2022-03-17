// Settings

#define LT_ServerName "Narcotic Roleplay"   // Change to your Server Name
#define LoginTextDrawColor 0x4CBB17FF       // Desired color for the TextDraws
#define TextDrawHoverColor 0x36870FFF       // Desired color for the Hoover Effect

// Header

enum E_USER_DATA
{
    E_USER_DATA_ID,
    E_USER_DATA_HASH[65],
    E_USER_DATA_RANK,
    bool:E_USER_DATA_REGISTERED,

    Float:E_USER_DATA_POS_X,
    Float:E_USER_DATA_POS_Y,
    Float:E_USER_DATA_POS_Z,
    Float:E_USER_DATA_POS_A
};

enum
{
    D_Login = 10100,
    D_Register = 10101,
    D_About = 10102,
    D_Rules = 10103,
    D_Credits = 10104
};

new
    gUserInfo[MAX_PLAYERS][E_USER_DATA],
    gUserInfoReset[E_USER_DATA],
    Group:gGroupLoggedIn,
    Text:GlobalLoginTextDraw[29],
    PlayerText:PlayerLoginTextDraw[MAX_PLAYERS][4];

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