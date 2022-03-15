// Functions

Ban_IpToLong(const address[]) {
    new parts[4];
    sscanf(address, "p<.>a<i>[4]", parts);
    return ((parts[0] << 24) | (parts[1] << 16) | (parts[2] << 8) | parts[3]);
}

Ban_ReturnDate(timestamp) {
    static const MONTH_NAMES[12][] = {
        "January", "Feburary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    };

    new year, month, day, hour, minute, second;
    stamp2datetime(timestamp, year, month, day, hour, minute, second);

    new ret[32];
    format(ret, sizeof(ret),
        "%i %s, %i",
        day, MONTH_NAMES[month - 1], year
    );
    return ret;
}

Ban_ReturnTimelapse(start, till) {
    new ret[32];
    new seconds = (till - start);

    const
        MINUTE = (60),
        HOUR = (60 * MINUTE),
        DAY = (24 * HOUR),
        MONTH = (30 * DAY);

    if (seconds == 1) {
        format(ret, sizeof(ret), "a second");
    } else if (seconds < (1 * MINUTE)) {
        format(ret, sizeof(ret), "%i seconds", seconds);
    } else if (seconds < (2 * MINUTE)) {
        format(ret, sizeof(ret), "a minute");
    } else if (seconds < (45 * MINUTE)) {
        format(ret, sizeof(ret), "%i minutes", (seconds / MINUTE));
    } else if (seconds < (90 * MINUTE)) {
        format(ret, sizeof(ret), "an hour");
    } else if (seconds < (24 * HOUR)) {
        format(ret, sizeof(ret), "%i hours", (seconds / HOUR));
    } else if (seconds < (48 * HOUR)) {
        format(ret, sizeof(ret), "a day");
    } else if (seconds < (30 * DAY)) {
        format(ret, sizeof(ret), "%i days", (seconds / DAY));
    } else if (seconds < (12 * MONTH)) {
        new months = floatround(seconds / DAY / 30);
        if (months <= 1) {
            format(ret, sizeof(ret), "a month");
        } else {
            format(ret, sizeof(ret), "%i months", months);
        }
    } else {
        new years = floatround(seconds / DAY / 365);
        if (years <= 1) {
            format(ret, sizeof(ret), "a year");
        } else {
            format(ret, sizeof(ret), "%i years", years);
        }
    }

    return ret;
}

Ban_CreateTextDraws() {
    banTextDraw[0] = TextDrawCreate(0.000000, 0.000000, "_");
	TextDrawBackgroundColor(banTextDraw[0], 255);
	TextDrawFont(banTextDraw[0], 1);
	TextDrawLetterSize(banTextDraw[0], 0.000000, 480.000000);
	TextDrawColor(banTextDraw[0], -1);
	TextDrawSetOutline(banTextDraw[0], 0);
	TextDrawSetProportional(banTextDraw[0], true);
	TextDrawSetShadow(banTextDraw[0], 1);
	TextDrawUseBox(banTextDraw[0], true);
	TextDrawBoxColor(banTextDraw[0], 255);
	TextDrawTextSize(banTextDraw[0], 640.000000, 0.000000);
	TextDrawSetSelectable(banTextDraw[0], false);

	banTextDraw[1] = TextDrawCreate(310.000000, 200.000000, "~r~You are banned!");
	TextDrawAlignment(banTextDraw[1], 2);
	TextDrawBackgroundColor(banTextDraw[1], 255);
	TextDrawFont(banTextDraw[1], 1);
	TextDrawLetterSize(banTextDraw[1], 1.400000, 8.000000);
	TextDrawColor(banTextDraw[1], -1);
	TextDrawSetOutline(banTextDraw[1], 0);
	TextDrawSetProportional(banTextDraw[1], true);
	TextDrawSetShadow(banTextDraw[1], 1);
	TextDrawSetSelectable(banTextDraw[1], false);
}

forward OnUserBanDataLoad(playerid);
public OnUserBanDataLoad(playerid) {
    if (cache_num_rows() == 1) {
        new string[144];
        new ban_id;
        new ban_expire_timestamp;
        cache_get_value_name_int(0, "id", ban_id);
        cache_get_value_name_int(0, "ban_expire_timestamp", ban_expire_timestamp);

        if (ban_expire_timestamp != 0 && gettime() >= ban_expire_timestamp) {
            mysql_format(gHandler, string, sizeof(string),
                "DELETE FROM bans WHERE id = %i",
                ban_id
            );

            mysql_tquery(gHandler, string);
            mysql_tquery(gHandler, "ALTER TABLE bans AUTO_INCREMENT = 1");
            return;
        }

        new ban_timestamp;
        new ban_admin[MAX_PLAYER_NAME];
        new ban_reason[MAX_BAN_REASON_LENGTH];

        cache_get_value_name_int(0, "ban_timestamp", ban_timestamp);
        cache_get_value_name(0, "ban_admin", ban_admin, sizeof(ban_admin));
        cache_get_value_name(0, "ban_reason", ban_reason, sizeof(ban_reason));

        for (new i = 0; i < sizeof(banTextDraw); i++) {
            TextDrawShowForPlayer(playerid, banTextDraw[i]);
        }

        for (new i = 0; i < 100; i++) {
            SendClientMessage(playerid, -1, "");
        }

        format(string, sizeof(string), "This account is banned on this server! Banned on %s (%s ago) by admin %s!", Ban_ReturnDate(ban_timestamp), Ban_ReturnTimelapse(ban_timestamp, gettime()));
        SendClientMessage(playerid, X11_INDIAN_RED, string);
        format(string, sizeof(string), "Reason: %s", ban_reason);
        SendClientMessage(playerid, X11_INDIAN_RED, string);
        if (ban_expire_timestamp != 0) {
            format(string, sizeof(string), "Your ban will be lifted on: %s (%s)", Ban_ReturnDate(ban_expire_timestamp), Ban_ReturnTimelapse(gettime(), ban_expire_timestamp));
            SendClientMessage(playerid, X11_INDIAN_RED, string);
        }

        User_DelayedKick(playerid);
    }
    
    return;
}

forward OnFindBanSearchDataLoad(playerid, const match[]);
public OnFindBanSearchDataLoad(playerid, const match[]) {
    if (cache_num_rows() == 0) {
        SendErrorMessage(playerid, "User not found in ban gHandler!");
        return;
    }

    new string[512];

    new ban_id;
    new ban_expire_timestamp;
    cache_get_value_name_int(0, "id", ban_id);
    cache_get_value_name_int(0, "ban_expire_timestamp", ban_expire_timestamp);

    if (ban_expire_timestamp != 0 && gettime() >= ban_expire_timestamp) {
        mysql_format(gHandler, string, sizeof(string),
            "DELETE FROM bans WHERE id = %i",
            ban_id
        );

        mysql_tquery(gHandler, string);
        mysql_tquery(gHandler, "ALTER TABLE bans AUTO_INCREMENT = 1");

        SendErrorMessage(playerid, "User not found in ban gHandler!");
        return;
    }

    new name[MAX_PLAYER_NAME];
    new ip[MAX_PLAYER_IP];
    new date;
    new unban_date;
    new admin[MAX_PLAYER_NAME];
    new reason[MAX_BAN_REASON_LENGTH];

    cache_get_value_name(0, "name", name, MAX_PLAYER_NAME);
    cache_get_value_name(0, "ip", ip, MAX_PLAYER_IP);
    cache_get_value_name_int(0, "ban_timestamp", date);
    cache_get_value_name_int(0, "ban_expire_timestamp", unban_date);
    cache_get_value_name(0, "ban_admin", admin, MAX_PLAYER_NAME);
    cache_get_value_name(0, "ban_reason", reason, MAX_BAN_REASON_LENGTH);

    if (unban_date == 0) {
        format(string, sizeof(string),
            WHITE "/findban search result for \"%s\":\n\n"GREY"* UserName: "RED"%s\n"GREY"* IP. Address: "RED"%s\n"GREY"* Banned By Admin: "WHITE"%s\n"GREY"* Banned On Date: "WHITE"%s (%s ago)\n"GREY"* Ban Type: "WHITE"Permanent\n"GREY"* Reason: "WHITE"%s\n\nToday's Date: %s!\nTo unban a player, type /unban <name/ip>!",
            match, name, ip, admin, Ban_ReturnDate(date), Ban_ReturnTimelapse(date, gettime()), reason, Ban_ReturnDate(gettime())
        );
    } else {
        format(string, sizeof(string),
            WHITE "/findban search result for \"%s\":\n\n"GREY"* UserName: "RED"%s\n"GREY"* IP. Address: "RED"%s\n"GREY"* Banned By Admin: "WHITE"%s\n"GREY"* Banned On Date: "WHITE"%s (%s ago)\n"GREY"* UnBan On: "RED"%s (%s)\n"GREY"* Reason: "WHITE"%s\n\nToday's Date: %s!\nTo unban a player, type /unban <name/ip>!",
            match, name, ip, admin, Ban_ReturnDate(date), Ban_ReturnTimelapse(date, gettime()), Ban_ReturnDate(unban_date), Ban_ReturnTimelapse(gettime(), unban_date), reason, Ban_ReturnDate(gettime())
        );
    }

    ShowPlayerDialog(playerid, 0, DIALOG_STYLE_MSGBOX, "Server ban info:", string, "Close", "");
}

forward OnUnBanSearchDataLoad(playerid);
public OnUnBanSearchDataLoad(playerid) {
    if (cache_num_rows() == 0) {
        SendErrorMessage(playerid, "User not found in ban gHandler!");
        return;
    }

    new string[144];

    new ban_expire_timestamp;
    cache_get_value_name_int(0, "id", gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID]);
    cache_get_value_name_int(0, "ban_expire_timestamp", ban_expire_timestamp);

    if (ban_expire_timestamp != 0 && gettime() >= ban_expire_timestamp) {
        mysql_format(gHandler, string, sizeof(string),
            "DELETE FROM bans WHERE id = %i",
            gUnBanData[playerid][E_UNBAN_DATA_TARGET_ID]
        );

        mysql_tquery(gHandler, string);
        mysql_tquery(gHandler, "ALTER TABLE bans AUTO_INCREMENT = 1");

        SendErrorMessage(playerid, "User not found in ban gHandler!");
        return;
    }

    new ip[MAX_PLAYER_IP];
    new date;
    new unban_date;
    new admin[MAX_PLAYER_NAME];
    new reason[MAX_BAN_REASON_LENGTH];

    cache_get_value_name(0, "name", gUnBanData[playerid][E_UNBAN_DATA_TARGET_NAME], MAX_PLAYER_NAME);
    cache_get_value_name(0, "ip", ip, MAX_PLAYER_IP);
    cache_get_value_name_int(0, "ban_timestamp", date);
    cache_get_value_name_int(0, "ban_expire_timestamp", unban_date);
    cache_get_value_name(0, "ban_admin", admin, MAX_PLAYER_NAME);
    cache_get_value_name(0, "ban_reason", reason, MAX_BAN_REASON_LENGTH);

    SendClientMessage(playerid, -1, "");

    format(string, sizeof(string), "Are you sure you want to unban \"%s\" (ip: %s)?", gUnBanData[playerid][E_UNBAN_DATA_TARGET_NAME], ip);
    SendClientMessage(playerid, X11_INDIAN_RED, string);

    if (unban_date == 0) {
        format(string, sizeof(string),
            "%s was banned by admin %s, on %s (%s ago) || Unban On: %s || Reason: %s",
            gUnBanData[playerid][E_UNBAN_DATA_TARGET_NAME], admin, Ban_ReturnDate(date), Ban_ReturnTimelapse(date, gettime()), Ban_ReturnDate(unban_date), reason
        );
    } else {
        format(string, sizeof(string),
            "%s was banned by admin %s, on %s (%s ago) || Ban Type: Permanent || Reason: %s",
            gUnBanData[playerid][E_UNBAN_DATA_TARGET_NAME], admin, Ban_ReturnDate(date), Ban_ReturnTimelapse(date, gettime()), reason
        );
    }
    SendClientMessage(playerid, X11_INDIAN_RED, string);

    SendServerMessage(playerid, "Type \"/unban yes\" to unban this player, or type \"/unban no\" to cancel");

    gUnBanData[playerid][E_UNBAN_DATA_CMD_TIMESTAMP] = gettime();
}