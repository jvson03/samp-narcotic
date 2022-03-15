YCMD:ann(playerid, params[], help)
{
	if (help)
		return SendInfoMessage(playerid, "Sends an announcement in the chat.  Example: '/ann i love frogs'");

	if (isnull(params))
		return SendUsageMessage(playerid, "Cannot send empty announcement");

	return va_SendClientMessageToAll(X11_RED, "[Announcement]:"WHITE" %s", params);
}

YCMD:announce(playerid, params[], help) = ann;