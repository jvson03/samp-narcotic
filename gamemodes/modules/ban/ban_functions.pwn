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