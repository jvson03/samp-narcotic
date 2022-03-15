forward OnVehicleCreated(vehicleid);
public OnVehicleCreated(vehicleid)
{
	if (vehicleid == -1 || !gVehicleInfo[vehicleid][E_VEHICLE_DATA_EXISTS])
    {
        return 0;
    }

	gVehicleInfo[vehicleid][E_VEHICLE_DATA_ID] = cache_insert_id(gHandler);
	Vehicle_SaveData(vehicleid);
	return 1;
}