// Functions

Vehicle_SaveData(vehicleid)
{
    static
        query[150];

    format(query, sizeof(query), "UPDATE vehicles SET Model = %d, Owner = %d, PosX = %.4f, PosY = %.4f, PosZ = %.4f, PosA = %.4f, Health = %.4f, Color1 = %d, Color2 = %d, Siren = %d WHERE ID = %d",
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_MODEL],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_OWNER],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_POS_X],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_POS_Y],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_POS_Z],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_POS_A],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_HEALTH],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_COLOR_1],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_COLOR_2],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_SIREN],
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_ID],
    );
    return MySQL_TQuery(gHandler, query);
}

Vehicle_LoadData()
{
    inline const LoadVehicles()
    {
        new
            // Declare rows
            lRows = cache_num_rows();
        
        // If there's no rows -> SUS
        if(lRows)
        {
            for (new i = 0; i < lRows; i ++) if (i < MAX_DYNAMIC_CARS)
            {
                // Load data
                gVehicleInfo[i][E_VEHICLE_DATA_EXISTS] = true;
                cache_get_value_name_int(0, "ID", gVehicleInfo[i][E_VEHICLE_DATA_ID]);
                cache_get_value_name_int(0, "Model", gVehicleInfo[i][E_VEHICLE_DATA_MODEL]);
                cache_get_value_name_int(0, "Owner", gVehicleInfo[i][E_VEHICLE_DATA_OWNER]);
                // Loading Position
                cache_get_value_name_float(0, "PosX", gVehicleInfo[i][E_VEHICLE_DATA_POS_X]);
                cache_get_value_name_float(0, "PosY", gVehicleInfo[i][E_VEHICLE_DATA_POS_Y]);
                cache_get_value_name_float(0, "PosZ", gVehicleInfo[i][E_VEHICLE_DATA_POS_Z]);
                cache_get_value_name_float(0, "PosA", gVehicleInfo[i][E_VEHICLE_DATA_POS_A]);
                // Properties
                cache_get_value_name_float(0, "Health", gVehicleInfo[i][E_VEHICLE_DATA_HEALTH]);
                cache_get_value_name_int(0, "Color1", gVehicleInfo[i][E_VEHICLE_DATA_COLOR_1]);
                cache_get_value_name_int(0, "Color2", gVehicleInfo[i][E_VEHICLE_DATA_COLOR_2]);
                cache_get_value_name_bool(0, "Siren", gVehicleInfo[i][E_VEHICLE_DATA_SIREN]);

                // After we load the data we spawn the vehicles
                // Vehicle_SpawnVehicle(i);
            }
        }
    }
    // Select everything from db
    MySQL_TQueryInline(gHandler, using inline LoadVehicles, "SELECT * FROM vehicles");
    return true;
}