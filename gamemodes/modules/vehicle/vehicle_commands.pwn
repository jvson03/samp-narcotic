YCMD:giveveh(playerid, params[], help)
{
    static
		userid,
        model[32];
    
    if (help)
    {
        return SendClientMessage(playerid, X11_YELLOW, "[Info]:"WHITE" Give someone a vehicle.  Example: '/giveveh jason cheetah'");
    }
    
    if (sscanf(params, "us[32]", userid, model))
    {
        return SendClientMessage(playerid, X11_YELLOW, "[Usage]:"WHITE" /givecar [playerid/name] [modelid/name]");
    }
    
    if ((model[0] = Vehicle_GetModelByName(model)) == 0)
    {
        return SendClientMessage(playerid, X11_YELLOW, "Invalid model ID.");
    }
    
    static
        Float:x,
        Float:y,
        Float:z,
        Float:angle,
        id = -1;
    
    GetPlayerPos(userid, x, y, z);
    GetPlayerFacingAngle(userid, angle);
    
    id = Vehicle_Create(User_GetID(userid), model[0], x, y + 2, z + 1, angle, random(127), random(127));
    
    if (id == -1)
    {
        return SendClientMessage(playerid, X11_YELLOW, "The server has reached the limit for dynamic vehicles.");
    }
    
    va_SendClientMessage(playerid, X11_YELLOW, "You have created vehicle ID: %d for %s.", gVehicleInfo[id][E_VEHICLE_DATA_VEHICLE], User_GetName(userid));
    return true;
}