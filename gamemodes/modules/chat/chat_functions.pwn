// Chat Functions

SendServerMessage(playerid, message)
{
    va_SendClientMessage(playerid, X11_INDIAN_RED, "[Server]: "WHITE" %s", message);
    return 1;
}