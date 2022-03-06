YCMD:ann(playerid, params[], help)
{
	if (help)
		return SendClientMessage(playerid, X11_YELLOW, "[Info]"WHITE" Sends an announcement in the chat.  Example: '/ann i love frogs'");

	if (isnull(params))
		return SendClientMessage(playerid, X11_YELLOW, "[Usage]"WHITE" You must enter an action");

	return va_SendClientMessageToAll(X11_RED, "[Announcement]"WHITE" %s", params);
}