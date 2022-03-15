// Settings
#define MAX_BAN_REASON_LENGTH 64 // max string length of ban reason
#define CIDR_BAN_MASK \
	(-1<<(32-(26))) // 26 = this is the CIDR ip detection range
#define KICK_TIMER_DELAY 150 // in miliseconds - a timer delay added to Kick(); function

// Header

enum E_BAN_DATA {
	E_BAN_DATA_CMD_TIMESTAMP,
	E_BAN_DATA_TARGET_ID,
	E_BAN_DATA_TARGET_NAME[MAX_PLAYER_NAME],
	E_BAN_DATA_TARGET_IP[MAX_PLAYER_IP],
	E_BAN_DATA_DAYS,
	E_BAN_DATA_REASON[MAX_BAN_REASON_LENGTH],
};

enum E_UNBAN_DATA {
	E_UNBAN_DATA_CMD_TIMESTAMP,
	E_UNBAN_DATA_TARGET_ID,
	E_UNBAN_DATA_TARGET_NAME[MAX_PLAYER_NAME]
};

new 
    gBanData[MAX_PLAYERS][E_BAN_DATA],
    gUnBanData[MAX_PLAYERS][E_UNBAN_DATA],
    Text:banTextDraw[2];