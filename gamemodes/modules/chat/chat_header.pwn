// Header

#define SendServerMessage(%0,%1) \
	va_SendClientMessage(%0, X11_INDIAN_RED, "[Server]:"WHITE" "%1)

#define SendUsageMessage(%0,%1) \
	va_SendClientMessage(%0, X11_LIGHT_YELLOW, "[Usage]:"WHITE" "%1)

#define SendErrorMessage(%0,%1) \
	va_SendClientMessage(%0, X11_VIOLET_RED_1 , "[Error]:"WHITE" "%1)

#define SendInfoMessage(%0,%1) \
	va_SendClientMessage(%0, Y_LIGHT_SKY_BLUE , "[Info]:"WHITE" "%1)

new randomHint[][] =
{
    "Smoke Weed Everyday!",
    "Weed is healthy, cocaine is healthier!",
    "Huh? You still talkin?"
};