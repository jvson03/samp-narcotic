// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks

hook OnGameModeInit()
{
    Ban_CreateTextDraws()
    return true;
}

hook OnGameModeExit()
{
    for (new i = 0; i < sizeof(banTextDraw); i++) {
		TextDrawDestroy(banTextDraw[i]);
    }
    return true;
}

hook OnPlayerConnect(playerid)
{
    gBanData[playerid][E_BAN_DATA_TARGET_ID] = INVALID_PLAYER_ID;
	gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID] = -1;

    new name[MAX_PLAYER_NAME];
    new ip[MAX_PLAYER_IP];
	GetPlayerName(playerid, name, MAX_PLAYER_NAME);
	GetPlayerIp(playerid, ip, MAX_PLAYER_IP);

	new string[MAX_PLAYER_NAME + 256];
	mysql_format(gHandler, string, sizeof(string),
		"SELECT * FROM bans WHERE (name = '%e') OR (ip = '%e') OR (longip & %i = %i) LIMIT 1",
		name, ip, CIDR_BAN_MASK, (IpToLong(ip) & CIDR_BAN_MASK)
	);

	mysql_tquery(gHandler, string, "OnUserBanDataLoad", "i", playerid);
    return true;
}