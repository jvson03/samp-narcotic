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

YCMD:deleteveh(playerid, params[], help)
{
	static
        id = 0;
    
    if (help)
    {
        return SendClientMessage(playerid, X11_YELLOW, "[Info]:"WHITE" Delete a vehicle.  Example: '/deleteveh 1'");
    }
    
    if (sscanf(params, "d", id))
    {
        if (IsPlayerInAnyVehicle(playerid))
        {
            id = GetPlayerVehicleID(playerid);
        }
        else return SendClientMessage(playerid, X11_YELLOW, "[Usage]:"WHITE" /destroycar [vehicle id]");
    }
    

    if (!IsValidVehicle(id) || Vehicle_GetID(id) == -1)
    {
        return SendClientMessage(playerid, X11_YELLOW, "You have specified an invalid vehicle ID.");
    }
    
    Vehicle_DeleteData(Vehicle_GetID(id));
    va_SendClientMessage(playerid, X11_YELLOW, "You have successfully destroyed vehicle ID: %d.", id);
    return true;
}