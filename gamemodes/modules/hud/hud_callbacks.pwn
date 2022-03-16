// Functions

UICompassTimer(playerid)
{
    static const
        step_1 = MAX_UICOMPASS_STEP * 1,
        step_2 = MAX_UICOMPASS_STEP * 2,
        step_3 = MAX_UICOMPASS_STEP * 3;
        
    static
        north,
        result,
        direction,
        Float:angle;

    //Find out the player's direction
    GetPlayerFacingAngle(playerid, angle);

    //Get the maximum step of the compass
    result = RoundCompassDirection(angle);

    //Get the minimum step of the compass
    direction = RoundCompassDirection(angle, MIN_UICOMPASS_STEP);

    //Find out what TD will be displayed "N"
    north = CompassHeadingNorth(result);

    //Three previous directions
    PlayerTextDrawSetString(playerid, td_uicompass[playerid][0], CreateCompassString(result - step_3));
    PlayerTextDrawSetString(playerid, td_uicompass[playerid][1], CreateCompassString(result - step_2));
    PlayerTextDrawSetString(playerid, td_uicompass[playerid][2], CreateCompassString(result - step_1));

    //The current direction
    PlayerTextDrawSetString(playerid, td_uicompass[playerid][3], CreateCompassString(result));

    //Three next directions
    PlayerTextDrawSetString(playerid, td_uicompass[playerid][4], CreateCompassString(result + step_1));
    PlayerTextDrawSetString(playerid, td_uicompass[playerid][5], CreateCompassString(result + step_2));
    PlayerTextDrawSetString(playerid, td_uicompass[playerid][6], CreateCompassString(result + step_3));

    //Print direction which is multiply to the minimum step
    PlayerTextDrawSetString(playerid, td_compass_dir[playerid], CreateCompassString(direction, MIN_UICOMPASS_STEP));

    //Installed all the TD the original color
    PlayerTextDrawColor(playerid, td_uicompass[playerid][0], 0xFFFFFFFF);
    PlayerTextDrawShow(playerid, td_uicompass[playerid][0]);
    PlayerTextDrawColor(playerid, td_uicompass[playerid][1], 0xFFFFFFFF);
    PlayerTextDrawShow(playerid, td_uicompass[playerid][1]);
    PlayerTextDrawColor(playerid, td_uicompass[playerid][2], 0xFFFFFFFF);
    PlayerTextDrawShow(playerid, td_uicompass[playerid][2]);
    PlayerTextDrawColor(playerid, td_uicompass[playerid][3], 0xFFFFFFFF);
    PlayerTextDrawShow(playerid, td_uicompass[playerid][3]);
    PlayerTextDrawColor(playerid, td_uicompass[playerid][4], 0xFFFFFFFF);
    PlayerTextDrawShow(playerid, td_uicompass[playerid][4]);
    PlayerTextDrawColor(playerid, td_uicompass[playerid][5], 0xFFFFFFFF);
    PlayerTextDrawShow(playerid, td_uicompass[playerid][5]);
    PlayerTextDrawColor(playerid, td_uicompass[playerid][6], 0xFFFFFFFF);
    PlayerTextDrawShow(playerid, td_uicompass[playerid][6]);
    
    //Set the TD yellow color, where it will be displayed "N"
    if (0 <= north < MAX_UICOMPASS_TD)
    {
        PlayerTextDrawColor(playerid, td_uicompass[playerid][north], 0xFFFF00FF);
        PlayerTextDrawShow(playerid, td_uicompass[playerid][north]);
    }

    return 1;
}

CreatePlayerTextDraw(playerid, Float:x, Float:y, text[])