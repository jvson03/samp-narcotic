YCMD:ann(playerid, params[], help)
{
	if (help)
		return SendClientMessage(playerid, X11_YELLOW, "[Info]"WHITE" Sends an announcement in the chat.  Example: '/ann i love frogs'");

	if (isnull(params))
		return SendClientMessage(playerid, X11_YELLOW, "[Usage]"WHITE" Cannot send empty announcement");

	return va_SendClientMessageToAll(X11_RED, "[Announcement]"WHITE" %s", params);
}

YCMD:announce(playerid, params[], help) = ann;