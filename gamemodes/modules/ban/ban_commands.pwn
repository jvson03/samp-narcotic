// Commands

YCMD:ban(playerid, params[], help)
{
    if (help)
        return SendInfoMessage(playerid, "Used to ban someone.");

    if (!strcmp(params, "yes", true)) {
        if (gBanData[playerid][E_BAN_DATATARGET_ID] != INVALID_PLAYER_ID) {
            if (gettime() > (gBanData[playerid][E_BAN_DATACMD_TIMESTAMP] + 60)) {
                gBanData[playerid][E_BAN_DATATARGET_ID] = INVALID_PLAYER_ID;
                return SendErrorMessage(playerid, "/ban command timeout, you have to respond to confirmation within a minute!");
            }

            new name[MAX_PLAYER_NAME];
            GetPlayerName(playerid, name, MAX_PLAYER_NAME);

            new ban_expire_timestamp = (gBanData[playerid][E_BAN_DATADAYS] == 0) ? (0) : (gettime() + (gBanData[playerid][E_BAN_DATADAYS] * 86400));

            new string[1024];
            mysql_format(gHandler, string, sizeof(string),
                "INSERT INTO bans(name, ip, longip, ban_timestamp, ban_expire_timestamp, ban_admin, ban_reason) \
                    VALUES ('%e', '%e', %i, %i, %i, '%e', '%e')",
                gBanData[playerid][E_BAN_DATATARGET_NAME], gBanData[playerid][E_BAN_DATATARGET_IP], IpToLong(gBanData[playerid][E_BAN_DATATARGET_IP]), gettime(), ban_expire_timestamp, name, gBanData[playerid][E_BAN_DATAREASON]
            );

            mysql_tquery(gHandler, string);

            if (gBanData[playerid][E_BAN_DATADAYS] != 0) {
                format(string, sizeof(string), "* Admin %s has banned %s for %i days (will be unbanned on %s) || Today's Date: %s || Reason: %s", name, gBanData[playerid][E_BAN_DATATARGET_NAME], gBanData[playerid][E_BAN_DATADAYS], ReturnDate(ban_expire_timestamp), ReturnDate(gettime()), gBanData[playerid][E_BAN_DATAREASON]);
            } else {
                format(string, sizeof(string), "* Admin %s has banned %s permanently || Today's Date: %s || Reason: %s", name, gBanData[playerid][E_BAN_DATATARGET_NAME], ReturnDate(gettime()), gBanData[playerid][E_BAN_DATAREASON]);
            }
            SendClientMessageToAll(X11_INDIAN_RED, string);

            GetPlayerName(gBanData[playerid][E_BAN_DATATARGET_ID], name, MAX_PLAYER_NAME);
            if (!strcmp(name, gBanData[playerid][E_BAN_DATATARGET_NAME])) {
                for (new i = 0; i < sizeof(banTextDraw); i++) {
                    TextDrawShowForPlayer(gBanData[playerid][E_BAN_DATATARGET_ID], banTextDraw[i]);
                }

                for (new i = 0; i < 100; i++) {
                    SendClientMessage(gBanData[playerid][E_BAN_DATATARGET_ID], X11_INDIAN_RED, "");
                }

                GetPlayerName(playerid, name, MAX_PLAYER_NAME);
                format(string, sizeof(string), "Your account has been banned on this server, by admin %s! [Today's Date: %s]", name, ReturnDate(gettime()));
                SendServerMessage(gBanData[playerid][E_BAN_DATATARGET_ID], string);
                format(string, sizeof(string), "Reason: %s", gBanData[playerid][E_BAN_DATAREASON]);
                SendServerMessage(gBanData[playerid][E_BAN_DATATARGET_ID], string);
                if (ban_expire_timestamp != 0) {
                    format(string, sizeof(string), "Your ban will be lifted on: %s (%s later)", ReturnDate(ban_expire_timestamp), ReturnTimelapse(gettime(), ban_expire_timestamp));
                    SendServerMessage(gBanData[playerid][E_BAN_DATATARGET_ID], string);
                }

                User_DelayedKick(gBanData[playerid][E_BAN_DATATARGET_ID]);
            }
            else {
                format(string, sizeof(string), "%s was banned, he went offline but ban was successfull!", gBanData[playerid][E_BAN_DATATARGET_NAME]);
                SendServerMessage(playerid, string);
            }

            gBanData[playerid][E_BAN_DATATARGET_ID] = INVALID_PLAYER_ID;
        }
        return 1;
    }
    else if (!strcmp(params, "no", true)) {
        if (gBanData[playerid][E_BAN_DATATARGET_ID] != INVALID_PLAYER_ID) {
            if (gettime() > (gBanData[playerid][E_BAN_DATACMD_TIMESTAMP] + 60)) {
                gBanData[playerid][E_BAN_DATATARGET_ID] = INVALID_PLAYER_ID;
                return SendErrorMessage(playerid, "/ban command timeout, you have to respond to confirmation within a minute!");
            }

            gBanData[playerid][E_BAN_DATATARGET_ID] = INVALID_PLAYER_ID;

            SendServerMessage(playerid, "Ban was canceled.");
        }
        return 1;
    }

    new targetid, reason[MAX_BAN_REASON_LENGTH], days;
    if (sscanf(params, "uis["#MAX_BAN_REASON_LENGTH"]", targetid, days, reason)) {
        SendUsageMessage(playerid, "/ban [id/name] [days] [reason]");
        SendInfoMessage(playerid, "0 days means a permanent ban from server.");
        return 1;
    }

    if (!IsPlayerConnected(targetid)) {
        return SendErrorMessage(playerid, "Target player isn't online.");
    }

    if (days < 0 || days > 365) {
        return SendErrorMessage(playerid, "Number of days cannot be negative or greater than 365 days! [0 = permanent ban]");
    }

    if (strlen(reason) < 4) {
        return SendErrorMessage(playerid, "Invalid reason entered.");
    }

    gBanData[playerid][E_BAN_DATACMD_TIMESTAMP] = gettime();
    gBanData[playerid][E_BAN_DATATARGET_ID] = targetid;
    gBanData[playerid][E_BAN_DATADAYS] = days;
    GetPlayerName(targetid, gBanData[playerid][E_BAN_DATATARGET_NAME], MAX_PLAYER_NAME);
    GetPlayerIp(targetid, gBanData[playerid][E_BAN_DATATARGET_IP], 18);
    format(gBanData[playerid][E_BAN_DATAREASON], MAX_E_BAN_DATAREASON_LENGTH, reason);

    new string[1024];
    if (days != 0) {
        format(string, sizeof(string),
            "You are about to ban \"%s\" for %i days || Reason: %s || Today's date: %s",
            gBanData[playerid][E_BAN_DATATARGET_NAME], days, reason, ReturnDate(gettime())
        );
    } else {
        format(string, sizeof(string),
            "You are about to ban \"%s\" permanently || Reason: %s || Today's date: %s",
            gBanData[playerid][E_BAN_DATATARGET_NAME], reason, ReturnDate(gettime())
        );
    }
    SendClientMessage(playerid, -1, "");
    SendServerMessage(playerid, string);
    SendServerMessage(playerid, "Please confirm by typing \"/ban yes\" to ban the player, or \"/ban no\" to cancel");

    return COMMAND_OK;
}

YCMD:findban(playerid, params[], help)
{
    if (help)
        return SendInfoMessage(playerid, "Used to find a ban.");

	new match[32];
	if (sscanf(params, "s[32]", match)) {
		return SendUsageMessage(playerid, "/unban [name/ip]");
	}

	new string[MAX_PLAYER_NAME + 256];
	mysql_format(gHandler, string, sizeof(string),
		"SELECT * FROM bans WHERE (name = '%e') OR (ip = '%e') OR (longip & %i = %i) LIMIT 1",
		match, match, CIDR_BAN_MASK, (IpToLong(match) & CIDR_BAN_MASK)
	);

    return mysql_tquery(gHandler, string, "OnFindBanSearchDataLoad", "is", playerid, match);
}

YCMD:unban(playerid, params[], help)
{
    if (help)
        return SendInfoMessage(playerid, "Used to unban someone.");

    if (!strcmp(params, "yes", true)) {
        if (gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID] != -1) {
            if (gettime() > (gUnBanData[playerid][E_UNBAN_DATA_CMD_TIMESTAMP] + 60)) {
                gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID] = -1;
                return SendErrorMessage(playerid, "/unban command timeout, you have to respond to confirmation within a minute!");
            }

            new string[144];

            new name[MAX_PLAYER_NAME];
            GetPlayerName(playerid, name, MAX_PLAYER_NAME);

            mysql_format(gHandler, string, sizeof(string),
                "DELETE FROM bans WHERE id = %i",
                gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID]
            );

            mysql_tquery(gHandler, string);
            mysql_tquery(gHandler, "ALTER TABLE bans AUTO_INCREMENT = 1");

            format(string, sizeof(string), "* Admin %s has unbanned %s || Today's Date: %s", name, gUnBanData[playerid][E_UNBAN_DATA_TARGET_NAME], ReturnDate(gettime()));
            SendClientMessageToAll(X11_INDIAN_RED, string);

            gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID] = -1;
        }
        return 1;
    }
    else if (!strcmp(params, "no", true)) {
        if (gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID] != -1) {
            if (gettime() > (gUnBanData[playerid][E_UNBAN_DATA_CMD_TIMESTAMP] + 60)) {
                gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID] = -1;
                return SendErrorMessage(playerid, "/unban command timeout, you have to respond to confirmation within a minute!");
            }

            gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID] = -1;

            SendServerMessage(playerid, "UnBan was canceled.");
        }
        return 1;
    }

    new match[32];
    if (sscanf(params, "s[32]", match)) {
        return SendUsageMessage(playerid, "/unban [name/ip]");
    }

    new string[MAX_PLAYER_NAME + 256];
    mysql_format(gHandler, string, sizeof(string),
        "SELECT * FROM bans WHERE (name = '%e') OR (ip = '%e') OR (longip & %i = %i) LIMIT 1",
        match, match, CIDR_BAN_MASK, (IpToLong(match) & CIDR_BAN_MASK)
    );

    return mysql_tquery(gHandler, string, "OnUnBanSearchDataLoad", "i", playerid);
}