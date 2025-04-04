YCMD:giveveh(playerid, params[], help)
{
    static
		userid,
        model[32];
    
    if (help)
    {
        return SendInfoMessage(playerid, "Give someone a vehicle.  Example: '/giveveh jason cheetah'");
    }
    
    if (sscanf(params, "us[32]", userid, model))
    {
        return SendUsageMessage(playerid, "/giveveh [playerid/name] [modelid/name]");
    }
    
    if ((model[0] = Vehicle_GetModelByName(model)) == 0)
    {
        return SendErrorMessage(playerid, "Invalid model ID.");
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
        return SendErrorMessage(playerid, "The server has reached the limit for dynamic vehicles.");
    }
    
    va_SendClientMessage(playerid, X11_INDIAN_RED, "[Server]:"WHITE" You have created vehicle ID: %d for %s.", gVehicleInfo[id][E_VEHICLE_DATA_VEHICLE], User_GetName(userid));
    return COMMAND_OK;
}

YCMD:veh(playerid, params[], help)
{
    static
        model[32];
    
    if (help)
    {
        return SendInfoMessage(playerid, "Spawn a temporary a vehicle.  Example: '/veh cheetah'");
    }
    
    if (sscanf(params, "s[32]", model))
    {
        return SendUsageMessage(playerid, "/veh [modelid/name]");
    }
    
    if ((model[0] = Vehicle_GetModelByName(model)) == 0)
    {
        return SendErrorMessage(playerid, "Invalid model.");
    }
    
    static
        Float:x,
        Float:y,
        Float:z,
        Float:angle;
    
    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, angle);
    
    CreateVehicle(model[0], x, y + 2, z + 1, angle, random(127), random(127), -1, true);
    return COMMAND_OK;
}

YCMD:vehdel(playerid, params[], help)
{
    if (help)
    {
        return SendInfoMessage(playerid, "Delete a temporary a vehicle.  Example: '/vehdel'");
    }
    
    if (IsPlayerInAnyVehicle(playerid))
    {
        new vehicleid = GetPlayerVehicleID(playerid);
        DestroyVehicle(vehicleid);
        SendServerMessage(playerid, "You have destroyed this admin vehicle.");
    }
    return COMMAND_OK;
}

YCMD:deleteveh(playerid, params[], help)
{
	static
        id = 0;
    
    if (help)
    {
        return SendInfoMessage(playerid, "Delete a vehicle.  Example: '/deleteveh 1'");
    }
    
    if (sscanf(params, "d", id))
    {
        if (IsPlayerInAnyVehicle(playerid))
        {
            id = GetPlayerVehicleID(playerid);
        }
        else return SendUsageMessage(playerid, "/destroycar [vehicle id]");
    }
    

    if (!IsValidVehicle(id) || Vehicle_GetID(id) == -1)
    {
        return SendErrorMessage(playerid, "You have specified an invalid vehicle ID.");
    }
    
    Vehicle_DeleteData(Vehicle_GetID(id));
    va_SendClientMessage(playerid, X11_INDIAN_RED, "[Server]:"WHITE" You have successfully destroyed vehicle ID: %d.", id);
    return COMMAND_OK;
}