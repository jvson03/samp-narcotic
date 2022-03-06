// - Core Dependencies
#include <a_samp>
#include <fixes>
// - Dependencies
#include <streamer>
#include <a_mysql>
#include <sscanf2>
// - Extra Dependencies
#include <YSI_Data\y_iterate>
#include <YSI_Coding\y_hooks>


main() {}

// MySQL handle

new MySQL:handle;

public OnGameModeInit()
{
	return true;
}

public OnGameModeExit()
{
	return true;
}

public OnPlayerConnect(playerid)
{
	return true;
}

public OnPlayerDisconnect(playerid, reason)
{
	return true;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return true;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	return true;
}

// Modules

#include "./modules/user/core.pwn"