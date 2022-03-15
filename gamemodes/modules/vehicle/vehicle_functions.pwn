// Functions

Vehicle_Create(ownerid, modelid, Float:x, Float:y, Float:z, Float:angle, color1, color2)
{
    for (new i = 0; i != MAX_DYNAMIC_CARS; i ++)
    {
        if (!gVehicleInfo[i][E_VEHICLE_DATA_EXISTS])
        {
            if (color1 == -1)
            {
                color1 = random(127);
            }

            if (color2 == -1)
            {
                color2 = random(127);
            }
            // Meh
            gVehicleInfo[i][E_VEHICLE_DATA_EXISTS] = true;
            gVehicleInfo[i][E_VEHICLE_DATA_MODEL] = modelid;
            gVehicleInfo[i][E_VEHICLE_DATA_OWNER] = ownerid;
            // Position
            gVehicleInfo[i][E_VEHICLE_DATA_POS_X] = x;
            gVehicleInfo[i][E_VEHICLE_DATA_POS_Y] = y;
            gVehicleInfo[i][E_VEHICLE_DATA_POS_Z] = z;
            gVehicleInfo[i][E_VEHICLE_DATA_POS_A] = angle;
            // Properties
            gVehicleInfo[i][E_VEHICLE_DATA_COLOR_1] = color1;
            gVehicleInfo[i][E_VEHICLE_DATA_COLOR_2] = color2;
            // Let's create the vehicle
            gVehicleInfo[i][E_VEHICLE_DATA_VEHICLE] = CreateVehicle(modelid, x, y, z, angle, color1, color2, -1);
            // Query
            mysql_tquery(gHandler, "INSERT INTO vehicles (Model) VALUES (0)", "OnVehicleCreated", "d", i);
            return i;
        }
    }
    return false;
}

Vehicle_DeleteData(vehicleid)
{
    if (vehicleid != -1 && gVehicleInfo[vehicleid][E_VEHICLE_DATA_EXISTS])
    {
        new
            query;

        format(query, sizeof(query), "DELETE FROM vehicles WHERE ID = %d", gVehicleInfo[vehicleid][E_VEHICLE_DATA_ID]);
        mysql_tquery(gHandler, query);

        if (IsValidVehicle(gVehicleInfo[vehicleid][E_VEHICLE_DATA_ID]))
        {
            DestroyVehicle(gVehicleInfo[vehicleid][E_VEHICLE_DATA_ID]);
        }

        gVehicleInfo[vehicleid][E_VEHICLE_DATA_EXISTS] = false;
    }
    return true;
}

Vehicle_SaveData(vehicleid)
{
    static
        query[180];

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
        gVehicleInfo[vehicleid][E_VEHICLE_DATA_ID]
    );
    return mysql_tquery(gHandler, query);
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