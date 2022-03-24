#define DEFAULT_OBJECT_ID (-1)

enum E_MAPPING_ENUM
{
    E_MAPPING_OBJECT, // Will be used to properly CreateDynamicObj... so we're able to destroy it later if needed.

    E_MAPPING_MODELID, // Will be used for storing object(model) ID.

    E_MAPPING_OWNER[MAX_PLAYER_NAME+1], // Will be used for storing who created the object.
    E_MAPPING_LASTEDITOR[MAX_PLAYER_NAME+1], // Will be used for storing who was the last to edit the object.

    Float:E_MAPPING_POSX, // Position axis X.
    Float:E_MAPPING_POSY, // Position axix Y.
    Float:E_MAPPING_POSZ, // Position axis Z.

    Float:E_MAPPING_ROTX, // Rotation axis X.
    Float:E_MAPPING_ROTY, // Rotation axis Y.
    Float:E_MAPPING_ROTZ, // Rotation axis Z.

    E_MAPPING_WORLDID, // Will be used for storing world ID the object creator is currently in.
    E_MAPPING_INTERIORID // Will be used for storing interior ID the object creator is currently in.
}

new
    Mapping_gMappingInfo[MAX_OBJECTS][E_MAPPING_ENUM], // Variable used for creating, etc... the objects.
    Mapping_gMappingClear[E_MAPPING_ENUM], // For completely resetting the variable for specified ID.
    Iterator:Mapping_gMapIter<MAX_OBJECTS>, // Iterator, used for detecting if the objects actually exist
    BitArray:Mapping_gHasSeenMessage<MAX_PLAYERS>, // Basically boolean variable used for detecting if the player ever seen the command info message.
    Mapping_gPlayerEditingID[MAX_PLAYERS] = {DEFAULT_OBJECT_ID, ...}; // Variable used for storing the current object ID the player is editing

/*
    <comment>
        - Usage - void:Mapping_ResetVariables(id)
        - The function will firstly check if the object exists, if it doesn't, nothing is going to happen.
        - If the objects exist however, the variable will be cleared and object deleted, iterator unallocated.
    </comment>
*/
void:Mapping_ResetVariables(id)
{
    if(!Iter_Contains(Mapping_gMapIter, id)) // Check if the object exists firstly, if doesn't:
    {
        printf("[Mapping-Script] Mapping_ResetVariables(%i) was unsuccessfully executed, object doesn't exist.", id); // Print it as a warning.
        return; // Don't proceed with the function.
    }

    DestroyDynamicObject(Mapping_gMappingInfo[id][E_MAPPING_OBJECT]); // Destroy the object.

    Mapping_gMappingInfo[id] = Mapping_gMappingClear; // Reset variable.

    Iter_Remove(Mapping_gMapIter, id); // Unallocate specified ID from the iterator.

    /*
        <comment>
            - Delete the object from the database.
        </comment>
    */

    new
        sqlFmt[100];
    
    format(
                sqlFmt, 
                sizeof(sqlFmt), 
                "DELETE FROM objects WHERE ID = %i", 
                id
            );
    mysql_tquery(gHandler, sqlFmt);
}

hook OnScriptInit()
{
    Mapping_LoadObjects();
    return 1;
}