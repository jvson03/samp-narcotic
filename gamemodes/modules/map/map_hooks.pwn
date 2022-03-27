// Dependencies
#include <YSI_Coding\y_hooks>

// Hooks
// Necessary

public OnPlayerFinishedDownloading(playerid, virtualworld)
{
    SendClientMessage(playerid, X11_INDIAN_RED, "[Server]: "WHITE" All assets have been downloaded!");
    return true;
}

public OnPlayerRequestDownload(playerid, type, crc)
{
    SendClientMessage(playerid, X11_INDIAN_RED, "[Server]: "WHITE" Please wait until all assets have been downloaded!");
    return true;
}