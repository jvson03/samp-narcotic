void:Mapping_LoadObjects()
{
    inline const LoadObjects()
    {
        new
            rows = cache_num_rows(); // Store rows that were found in the database into variable.

        if(!rows) // If there's no objects found in the database:
        {
            print("[Mapping-Script] No objects were found."); // Print it as a warning.
            return; // Stop the function here.
        }
        else
        {
            for(new x, y = rows, z; x < y; x++) // Loop through all objects stored in database:
            {
                cache_get_value_name_int(
                                            x, 
                                            "ID", 
                                            z
                                        ); // Store the unique ID of the object into temporary variable z.
                cache_get_value_name_int(
                                            x, 
                                            "ModelID", 
                                            Mapping_gMappingInfo[z][E_MAPPING_MODELID]
                                        ); // Load the model id of the object.

                cache_get_value_name(
                                        x, 
                                        "Creator", 
                                        Mapping_gMappingInfo[z][E_MAPPING_OWNER], 
                                        MAX_PLAYER_NAME+1
                                    );
                cache_get_value_name(
                                        x, 
                                        "LastEditedBy", 
                                        Mapping_gMappingInfo[z][E_MAPPING_LASTEDITOR], 
                                        MAX_PLAYER_NAME+1
                                    );

                cache_get_value_name_float(
                                            x, 
                                            "PosX", 
                                            Mapping_gMappingInfo[z][E_MAPPING_POSX]
                                        ); // Load the position axis x of the object.
                cache_get_value_name_float(
                                            x, 
                                            "PosY", 
                                            Mapping_gMappingInfo[z][E_MAPPING_POSY]
                                        ); // Load the position axis y of the object.
                cache_get_value_name_float(
                                            x, 
                                            "PosZ", 
                                            Mapping_gMappingInfo[z][E_MAPPING_POSZ]
                                        ); // Load the position axis z of the object.

                cache_get_value_name_float(
                                            x, 
                                            "RotX", 
                                            Mapping_gMappingInfo[z][E_MAPPING_ROTX]
                                        ); // Load the rotation x of the object.
                cache_get_value_name_float(
                                            x, 
                                            "RotY", 
                                            Mapping_gMappingInfo[z][E_MAPPING_ROTY]
                                        ); // Load the rotation y of the object.
                cache_get_value_name_float(
                                            x, 
                                            "RotZ", 
                                            Mapping_gMappingInfo[z][E_MAPPING_ROTZ]
                                        ); // Load the rotation z of the object.

                cache_get_value_name_int(
                                            x, 
                                            "WorldID", 
                                            Mapping_gMappingInfo[z][E_MAPPING_WORLDID]
                                        ); // Load the world ID of the object.
                cache_get_value_name_int(
                                            x, 
                                            "InteriorID", 
                                            Mapping_gMappingInfo[z][E_MAPPING_INTERIORID]
                                        ); // Load the interior ID of the object.

                Iter_Add(Mapping_gMapIter, z); // Allocate the iterator for that unique id(z).

                Mapping_gMappingInfo[z][E_MAPPING_OBJECT] = CreateDynamicObject(
                                                                            Mapping_gMappingInfo[z][E_MAPPING_MODELID], 
                                                                            Mapping_gMappingInfo[z][E_MAPPING_POSX], 
                                                                            Mapping_gMappingInfo[z][E_MAPPING_POSY], 
                                                                            Mapping_gMappingInfo[z][E_MAPPING_POSZ], 
                                                                            Mapping_gMappingInfo[z][E_MAPPING_ROTX], 
                                                                            Mapping_gMappingInfo[z][E_MAPPING_ROTY], 
                                                                            Mapping_gMappingInfo[z][E_MAPPING_ROTZ], 
                                                                            Mapping_gMappingInfo[z][E_MAPPING_WORLDID], 
                                                                            Mapping_gMappingInfo[z][E_MAPPING_INTERIORID]
                                                                        ); // Create the object.
            }
        }
    }
    MySQL_TQueryInline(
                        gHandler, 
                        using inline LoadObjects, 
                        "SELECT * FROM objects"
                    ); // Query, check if there's any objects in the database.
}