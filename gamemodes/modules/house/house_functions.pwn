// Functions

House_LoadData()
{
    inline const LoadHouses()
    {
        new
            // Declare rows
            lRows = cache_num_rows(),
            hLabel[128];
        
        // If there's no rows -> SUS
        if(!lRows)
        {
            return printf("\n[Houses]: 0 Houses were loaded.\n");
        }
        else // Otherwise
        {
            for(new i=0;i<lRows;i++)
            {
                // Load the data
                cache_get_value_name_int(i, "ID", gHouseInfo[i][E_HOUSE_DATA_ID]);
                cache_get_value_name(i, "Address", gHouseInfo[i][E_HOUSE_DATA_ADDRESS]);
                cache_get_value_name(i, "Description", gHouseInfo[i][E_HOUSE_DATA_DESCRIPTION]);
                cache_get_value_name_int(i, "Owner", gHouseInfo[i][E_HOUSE_DATA_OWNER]);
                cache_get_value_name_bool(i, "Owned", gHouseInfo[i][E_HOUSE_DATA_OWNED]);
                cache_get_value_name_bool(i, "Locked", gHouseInfo[i][E_HOUSE_DATA_LOCKED]);
                cache_get_value_name_int(i, "Price", gHouseInfo[i][E_HOUSE_DATA_PRICE]);
                cache_get_value_name_int(i, "Exterior", gHouseInfo[i][E_HOUSE_DATA_EXTERIOR]);
                cache_get_value_name_int(i, "Interior", gHouseInfo[i][E_HOUSE_DATA_INTERIOR]);
                cache_get_value_name_float(i, "ExteriorX", gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_X]);
                cache_get_value_name_float(i, "ExteriorY", gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_Y]);
                cache_get_value_name_float(i, "ExteriorZ", gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_Z]);
                cache_get_value_name_float(i, "InteriorX", gHouseInfo[i][E_HOUSE_DATA_INTERIOR_X]);
                cache_get_value_name_float(i, "InteriorY", gHouseInfo[i][E_HOUSE_DATA_INTERIOR_Y]);
                cache_get_value_name_float(i, "InteriorZ", gHouseInfo[i][E_HOUSE_DATA_INTERIOR_Z]);
                // Let's Load the houses now!
                gHouseInfo[i][E_HOUSE_DATA_PICKUP] = CreateDynamicPickup(PICKUP_SALE, 1, gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_X], gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_Y], gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_Z], 0, 0);
                if (gHouseInfo[i][E_HOUSE_DATA_OWNED])
                {
                    format(hLabel, sizeof(hLabel), "Owned \n%s", gHouseInfo[i][E_HOUSE_DATA_ADDRESS]);
                }
                else
                {
                    format(hLabel, sizeof(hLabel), "This House is for sale.\n%s\nPrice: $%d\nDescription: %s\nUse /buyhouse to Buy.", gHouseInfo[i][E_HOUSE_DATA_ADDRESS], gHouseInfo[i][E_HOUSE_DATA_PRICE], gHouseInfo[i][E_HOUSE_DATA_DESCRIPTION]);
                    // !NOTE Remove map icons as they ruin the roleplay
                    gHouseInfo[i][E_HOUSE_DATA_ICON] = CreateDynamicMapIcon(gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_X], gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_Y], gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_Z], 31, 1);
                }
                gHouseInfo[i][E_HOUSE_DATA_LABEL] = CreateDynamic3DTextLabel(hLabel, 0x4CBB17FF, gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_X], gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_Y], gHouseInfo[i][E_HOUSE_DATA_EXTERIOR_Z]+0.5, 30.0, .testlos = 1, .streamdistance = 30.0);
            }
            printf("\n[Houses]: %d Houses were loaded.\n", lRows);
        }
    }
    // Select everything from db
    MySQL_TQueryInline(gHandler, using inline LoadHouses, "SELECT * FROM houses");
    return true;
}