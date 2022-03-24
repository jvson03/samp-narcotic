#include <YSI_Coding\y_hooks>

YCMD:editmap(playerid, params[], help)
{
    if(!Bit_Get(Mapping_gHasSeenMessage, playerid)) // If player has never seen the detailed message regarding the command:
    {
        SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "|===========================================================|"
                        );
        
        SendClientMessage(
                            playerid, 
                            X11_INDIANRED, 
                            "- 'Create a new object' is used for creating new objects(if the limit hasn't been reached)"
                        ); // Show them info regarding it.
        
        SendClientMessage(
                            playerid, 
                            X11_INDIANRED, 
                            "..- you can search for the object IDs here: https://dev.prineside.com/gtasa_samp_model_id/"
                        ); // Show them info regarding it.
        
        SendClientMessage(
                            playerid, 
                            X11_INDIANRED, 
                            "- 'Destroy an object' is used for destroying the objects."
                        ); // Show them info regarding it.

        SendClientMessage(
                            playerid, 
                            X11_INDIANRED, 
                            "- 'Edit object position' allows you to adjust the new position of an object."
                        ); // Show them info regarding it.
        
        SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "|===========================================================|"
                        );

        Bit_Let(Mapping_gHasSeenMessage, playerid); // Make sure the player doesn't see the message the next time they use this command.
    }

    Mapping_DisplayPopup(playerid); // Display the main dialog.
    return COMMAND_OK;
}

void:Mapping_DisplayPopup(playerid)
{
    inline const DisplayPopup(response, listitem, string:inputtext[])
    {
        #pragma unused inputtext

        if(response) // If player doesn't exist the dialog.
        {
            if(listitem == 0) // If they've selected the 'Create a new object' option.
            {
                Mapping_DisplayObjectCreation(playerid); // Show them the dialog used for creating new objects.
                return; // And don't proceed with the function.
            }
            else if(listitem == 1)
            {
                Mapping_DisplayObjectDelete(playerid); // Show them the dialog used for deleting an object.
                return;
            }
            else if(listitem == 2)
            {
                Mapping_DisplayObjectPosMove(playerid); // Show them the dialog used for moving an object.
                return;
            }
            else if(listitem == 3)
            {
                Mapping_DisplayObjectInfo(playerid); // Show them the dialog used checking detailed info about the object.
                return;
            }
        }
    }
    Dialog_ShowCallback(
                            playerid, 
                            using inline DisplayPopup, 
                            DIALOG_STYLE_LIST, 
                            "Map-Panel", 
                            "Create a new object\nDestroy an object\nEdit object position\nView details about the object", 
                            "Select", 
                            "Cancel"
                        ); // Finally display the main dialog.
}

void:Mapping_DisplayObjectCreation(playerid)
{
    inline const DisplayObjectCreation(response, listitem, string:inputtext[])
    {
        #pragma unused listitem

        if(!response) // If player exits the dialog:
        {
            Mapping_DisplayPopup(playerid); // Show them the main dialog.
            return; // And don't proceed with the function.
        }

        if(!IsNumeric(inputtext)) // If the player didn't use number for model ID:
        {
            SendClientMessage(
                                playerid, 
                                X11_INDIANRED, 
                                "[Error] "BEIGE"The object ID you have specified is invalid!"
                            ); // Display the error message.
            
            Mapping_DisplayObjectCreation(playerid); // And show them the dialog used for creating new objects again.
            return; // And don't proceed with the function.
        }

        Mapping_CreateObject(
                                playerid, 
                                strval(inputtext)
                            ); // Call the function and finally create the object.
    }
    Dialog_ShowCallback(
                            playerid, 
                            using inline DisplayObjectCreation, 
                            DIALOG_STYLE_INPUT, 
                            "Map-Panel[Object creation]", 
                            "In the box beneath specify the object ID you wish to create:", 
                            "Continue", 
                            "Cancel"
                        ); // Finally display the dialog used for creating new objects.
}

void:Mapping_CreateObject(playerid, objectid)
{
    new
        freeId = Iter_Alloc(Mapping_gMapIter);

    if(freeId == INVALID_ITERATOR_SLOT) // If there's no available slots anymore:
    {
        SendClientMessage(
                                playerid, 
                                X11_INDIANRED, 
                                "[Error] "BEIGE"The maximum number of objects possible to create has been reached."
                            ); // Display the error message.
        return; // And don't proceed with the function.
    }

    Mapping_gMappingInfo[freeId][E_MAPPING_MODELID] = objectid; // Store the model ID to the object.

    GetPlayerPos(
                    playerid, 
                    Mapping_gMappingInfo[freeId][E_MAPPING_POSX], 
                    Mapping_gMappingInfo[freeId][E_MAPPING_POSY], 
                    Mapping_gMappingInfo[freeId][E_MAPPING_POSZ]
                ); // Store current player coordinates to the object we're creating.

    Mapping_gMappingInfo[freeId][E_MAPPING_POSY] += 5.0; // And move it slightly away from the player.

    Mapping_gMappingInfo[freeId][E_MAPPING_WORLDID] = GetPlayerVirtualWorld(playerid); // Store current player virtual world to the object.
    Mapping_gMappingInfo[freeId][E_MAPPING_INTERIORID] = GetPlayerInterior(playerid); // Store current player interior to the object.

    Mapping_gMappingInfo[freeId][E_MAPPING_OBJECT] = CreateDynamicObject(
                                                                            Mapping_gMappingInfo[freeId][E_MAPPING_MODELID], 
                                                                            Mapping_gMappingInfo[freeId][E_MAPPING_POSX], 
                                                                            Mapping_gMappingInfo[freeId][E_MAPPING_POSY], 
                                                                            Mapping_gMappingInfo[freeId][E_MAPPING_POSZ], 
                                                                            Mapping_gMappingInfo[freeId][E_MAPPING_ROTX], 
                                                                            Mapping_gMappingInfo[freeId][E_MAPPING_ROTY], 
                                                                            Mapping_gMappingInfo[freeId][E_MAPPING_ROTZ], 
                                                                            Mapping_gMappingInfo[freeId][E_MAPPING_WORLDID], 
                                                                            Mapping_gMappingInfo[freeId][E_MAPPING_INTERIORID]
                                                                        ); // Finally create the object.

    Mapping_gPlayerEditingID[playerid] = freeId; // Store the object they're currently editing into the variable.

    strcat(
            Mapping_gMappingInfo[freeId][E_MAPPING_OWNER], 
            ReturnPlayerName(playerid), MAX_PLAYER_NAME+1
        ); // Store the owner that created the object.

    EditDynamicObject(
                        playerid, 
                        Mapping_gMappingInfo[freeId][E_MAPPING_OBJECT]
                    ); // Begin editing the object

    SendClientMessage(
                            playerid, 
                            X11_INDIANRED, 
                            "[Notification] "BEIGE"You have successfully created the object, now adjust its position."
                        ); // Notify the player that the object was created.
    
    /*
        <comment>
            - Store the object into the database.
        </comment>
    */

    new
        sqlFmt[200 + MAX_PLAYER_NAME];
    
    mysql_format(
                gHandler,
                sqlFmt, 
                sizeof(sqlFmt), 
                "INSERT INTO objects(ID, Creator, ModelID, PosX, PosY, PosZ, RotX, RotY, RotZ, WorldID, InteriorID) VALUES(%i, '%e', %i, %f, %f, %f, %f, %f, %f, %i, %i)", 
                freeId, 
                Mapping_gMappingInfo[freeId][E_MAPPING_OWNER],
                Mapping_gMappingInfo[freeId][E_MAPPING_MODELID], 
                Mapping_gMappingInfo[freeId][E_MAPPING_POSX],
                Mapping_gMappingInfo[freeId][E_MAPPING_POSY],
                Mapping_gMappingInfo[freeId][E_MAPPING_POSZ],
                Mapping_gMappingInfo[freeId][E_MAPPING_ROTX],
                Mapping_gMappingInfo[freeId][E_MAPPING_ROTY],
                Mapping_gMappingInfo[freeId][E_MAPPING_ROTZ],
                Mapping_gMappingInfo[freeId][E_MAPPING_WORLDID],
                Mapping_gMappingInfo[freeId][E_MAPPING_INTERIORID]
            );
    mysql_tquery(gHandler, sqlFmt);
}

Mapping_ReturnNearbyObjects(playerid)
{
    new
        string[144] = "Nearby objects: "; // String in which will we store all nearby objects.

    foreach(new i: Mapping_gMapIter) // Loop through all created objects.
    {
        if(IsPlayerInRangeOfPoint(
                                    playerid, 
                                    5.0, 
                                    Mapping_gMappingInfo[i][E_MAPPING_POSX], 
                                    Mapping_gMappingInfo[i][E_MAPPING_POSY], 
                                    Mapping_gMappingInfo[i][E_MAPPING_POSZ]
                                )
        ) // If player is in range of X object.
        {
            strcat(
                    string, 
                    va_return("%i ", i)
                ); // Store the object ID into string used for storing all nearby objects.
        }
    }

    if(strlen(string) == 16) // Basically, if no objects were found nearby:
    {
        strcat(
                string, "none."
            ); // Store text that no objects were found.
    }

    return string;
}

void:Mapping_DisplayObjectDelete(playerid)
{
    new
        actualString[250]; // Actual string which will be displayed, check down for what's it used.

    format(
            actualString, 
            sizeof(actualString), 
            "In the box beneath specify the object ID you wish to delete:\n%s", 
            Mapping_ReturnNearbyObjects(playerid)
        ); // And finally, format final string and display it later in dialog.

    inline const DisplayObjectDelete(response, listitem, string:inputtext[])
    {
        #pragma unused listitem

        if(!response) // If player exits the dialog:
        {
            Mapping_DisplayPopup(playerid); // Show them the main dialog.
            return; // And don't proceed with the function.
        }

        if(!IsNumeric(inputtext)) // If the player didn't use number the object ID:
        {
            SendClientMessage(
                                playerid, 
                                X11_INDIANRED, 
                                "[Error] "BEIGE"The object ID you have specified is invalid!"
                            ); // Display the error message.
            
            Mapping_DisplayObjectDelete(playerid); // And show them the dialog used for creating new objects again.
            return; // And don't proceed with the function.
        }

        Mapping_DeleteObject(
                                playerid, 
                                strval(inputtext)
                            ); // Call the function and finally delete the object.
    }
    Dialog_ShowCallback(
                            playerid, 
                            using inline DisplayObjectDelete, 
                            DIALOG_STYLE_INPUT, 
                            "Map-Panel[Object delete]", 
                            actualString, 
                            "Continue", 
                            "Cancel"
                        ); // Finally display the dialog used for deleting an object.
}

void:Mapping_DeleteObject(playerid, id)
{
    if(!Iter_Contains(Mapping_gMapIter, id)) // Check if that object exists, if doesn't:
    {
        SendClientMessage(
                            playerid, 
                            X11_INDIANRED, 
                            "[Error] "BEIGE"The object ID you have specified doesn't exist!"
                        ); // Display the error message.

        Mapping_DisplayObjectDelete(playerid); // And display the same dialog again.
        return; // Stop the function from executing the rest of the code.
    }

    Mapping_ResetVariables(id);

    SendClientMessage(
                        playerid, 
                        X11_INDIANRED, 
                        "[Notification] "BEIGE"The object has been deleted successfully."
                    ); // Notify the player that they've deleted the object.
}

void:Mapping_DisplayObjectPosMove(playerid)
{
    new
        actualString[250]; // Actual string which will be displayed, check down for what's it used.

    format(
            actualString, 
            sizeof(actualString), 
            "In the box beneath specify the object ID you wish to adjust position:\n%s", 
            Mapping_ReturnNearbyObjects(playerid)
        ); // And finally, format final string and display it later in dialog.

    inline const DisplayObjectPosMove(response, listitem, string:inputtext[])
    {
        #pragma unused listitem

        if(!response) // If player exits the dialog:
        {
            Mapping_DisplayPopup(playerid); // Show them the main dialog.
            return; // And don't proceed with the function.
        }

        if(!IsNumeric(inputtext) || !Iter_Contains(Mapping_gMapIter, strval(inputtext))) // If the object ID isn't valid:
        {
            SendClientMessage(
                                playerid, 
                                X11_INDIANRED, 
                                "[Error] "BEIGE"The object ID you have specified is invalid!"
                            ); // Display the error message.
            
            Mapping_DisplayObjectPosMove(playerid); // And show them the dialog used for moving an object again.
            return; // And don't proceed with the function.
        }

        Mapping_gPlayerEditingID[playerid] = strval(inputtext); // Store the object they're currently editing into the variable.

        EditDynamicObject(
                            playerid, 
                            Mapping_gMappingInfo[ Mapping_gPlayerEditingID[playerid] ][E_MAPPING_OBJECT]
                        ); // Begin editing the object

        SendClientMessage(
                            playerid, 
                            X11_INDIANRED, 
                            "[Notification] "BEIGE"You have started editing the object, adjust its new position."
                        ); // Notify the player that they are starting to edit the object.
    }
    Dialog_ShowCallback(
                            playerid, 
                            using inline DisplayObjectPosMove, 
                            DIALOG_STYLE_INPUT, 
                            "Map-Panel[Object position adjustment]", 
                            actualString, 
                            "Continue", 
                            "Cancel"
                        ); // Finally display the dialog used for moving an object.
}

void:Mapping_DisplayObjectInfo(playerid)
{
    new
        actualString[250]; // Actual string which will be displayed, check down for what's it used.

    format(
            actualString, 
            sizeof(actualString), 
            "In the box beneath specify the object ID you wish check detailed info:\n%s", 
            Mapping_ReturnNearbyObjects(playerid)
        ); // And finally, format final string and display it later in dialog.

    inline const DisplayObjectInfo(response, listitem, string:inputtext[])
    {
        #pragma unused listitem
        
        new
            id = strval(inputtext);

        if(!response) // If player exits the dialog:
        {
            Mapping_DisplayPopup(playerid); // Show them the main dialog.
            return; // And don't proceed with the function.
        }

        if(!IsNumeric(inputtext) || !Iter_Contains(Mapping_gMapIter, id)) // If the object ID isn't valid:
        {
            SendClientMessage(
                                playerid, 
                                X11_INDIANRED, 
                                "[Error] "BEIGE"The object ID you have specified is invalid!"
                            ); // Display the error message.
            
            Mapping_DisplayObjectInfo(playerid); // And show them the dialog used for moving an object again.
            return; // And don't proceed with the function.
        }

        SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "|===========================================================|"
                        );
        
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "ID: "INDIANRED"%i.",
                            id
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Model ID: "INDIANRED"%i.",
                            Mapping_gMappingInfo[id][E_MAPPING_MODELID]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Owner: "INDIANRED"%s.",
                            Mapping_gMappingInfo[id][E_MAPPING_OWNER]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Last edited by: "INDIANRED"%s.",
                            Mapping_gMappingInfo[id][E_MAPPING_LASTEDITOR]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Position X: "INDIANRED"%f.",
                            Mapping_gMappingInfo[id][E_MAPPING_POSX]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Position Y: "INDIANRED"%f.",
                            Mapping_gMappingInfo[id][E_MAPPING_POSY]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Position Z: "INDIANRED"%f.",
                            Mapping_gMappingInfo[id][E_MAPPING_POSZ]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Rotation X: "INDIANRED"%f.",
                            Mapping_gMappingInfo[id][E_MAPPING_ROTX]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Rotation Y: "INDIANRED"%f.",
                            Mapping_gMappingInfo[id][E_MAPPING_ROTY]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Rotation Z: "INDIANRED"%f.",
                            Mapping_gMappingInfo[id][E_MAPPING_ROTZ]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "World ID: "INDIANRED"%i.",
                            Mapping_gMappingInfo[id][E_MAPPING_WORLDID]
                        ); // Show them info regarding it.
        va_SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "Interior ID: "INDIANRED"%i.",
                            Mapping_gMappingInfo[id][E_MAPPING_INTERIORID]
                        ); // Show them info regarding it.
        
        
        SendClientMessage(
                            playerid, 
                            X11_BEIGE, 
                            "|===========================================================|"
                        );
    }
    Dialog_ShowCallback(
                            playerid, 
                            using inline DisplayObjectInfo, 
                            DIALOG_STYLE_INPUT, 
                            "Map-Panel[Detailed info about object]", 
                            actualString, 
                            "Continue", 
                            "Cancel"
                        ); // Finally display the dialog used checking detailed info about the object.
}

hook OnPlayerEditDynamicObj(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
    new
        objectId = Mapping_gPlayerEditingID[playerid]; // Declare variable to make our life easier - the current object player is editing.

    if(objectId != DEFAULT_OBJECT_ID) // If player is actually editing a valid object:
    {
        if(response == EDIT_RESPONSE_FINAL) // If player finished editing the object:
        {
            if(!Iter_Contains(Mapping_gMapIter, objectId)) // Check if that object still exists, if doesn't:
            {
                printf(
                        "[Mapping-Script] OnPlayerEditDynamicObject(%i) - player %s was attempting to edit object that doesn't exist!", 
                        objectId, ReturnPlayerName(playerid)
                    ); // Print it as a warning.
                return 1; // Stop the callback from executing the rest of the code.
            }

            Mapping_gMappingInfo[objectId][E_MAPPING_POSX] = x; // Update the new object position - axis x.
            Mapping_gMappingInfo[objectId][E_MAPPING_POSY] = y; // Update the new object position - axis y.
            Mapping_gMappingInfo[objectId][E_MAPPING_POSZ] = z; // Update the new object position - axis z.
            Mapping_gMappingInfo[objectId][E_MAPPING_ROTX] = rx; // Update the new object position - rotation x.
            Mapping_gMappingInfo[objectId][E_MAPPING_ROTY] = ry; // Update the new object position - rotation y.
            Mapping_gMappingInfo[objectId][E_MAPPING_ROTZ] = rz; // Update the new object position - rotation z.

            SetDynamicObjectPos(
                                    Mapping_gMappingInfo[objectId][E_MAPPING_OBJECT], 
                                    Mapping_gMappingInfo[objectId][E_MAPPING_POSX], 
                                    Mapping_gMappingInfo[objectId][E_MAPPING_POSY], 
                                    Mapping_gMappingInfo[objectId][E_MAPPING_POSZ]
                                ); // Actually update the object's position.
            SetDynamicObjectRot(
                                    Mapping_gMappingInfo[objectId][E_MAPPING_OBJECT], 
                                    Mapping_gMappingInfo[objectId][E_MAPPING_ROTX], 
                                    Mapping_gMappingInfo[objectId][E_MAPPING_ROTY], 
                                    Mapping_gMappingInfo[objectId][E_MAPPING_ROTZ]
                                ); // Actually update the object's rotation.
            SendClientMessage(
                                playerid, 
                                X11_INDIANRED, 
                                "[Notification] "BEIGE"The position has been successfully adjusted."
                            ); // Notify the player that they've finished with the object editing.

            format(
                        Mapping_gMappingInfo[objectId][E_MAPPING_LASTEDITOR], 
                        MAX_PLAYER_NAME+1,
                        ReturnPlayerName(playerid)
                    ); // Make sure the store the guy that last edited the object.

            /*
                <comment>
                    - Update the object's position in the database.
                </comment>
            */

            new
                sqlFmt[200];
            
            mysql_format(
                        gHandler,
                        sqlFmt, 
                        sizeof(sqlFmt), 
                        "UPDATE objects SET PosX = %f, PosY = %f, PosZ = %f, RotX = %f, RotY = %f, RotZ = %f, LastEditedBy = '%e' WHERE ID = %i", 
                        Mapping_gMappingInfo[objectId][E_MAPPING_POSX],
                        Mapping_gMappingInfo[objectId][E_MAPPING_POSY],
                        Mapping_gMappingInfo[objectId][E_MAPPING_POSZ],
                        Mapping_gMappingInfo[objectId][E_MAPPING_ROTX],
                        Mapping_gMappingInfo[objectId][E_MAPPING_ROTY],
                        Mapping_gMappingInfo[objectId][E_MAPPING_ROTZ],
                        Mapping_gMappingInfo[objectId][E_MAPPING_LASTEDITOR],
                        objectId
                    );
            mysql_tquery(gHandler, sqlFmt);

            Mapping_gPlayerEditingID[playerid] = DEFAULT_OBJECT_ID; // Make sure the player isn't editing the object anymore.
        }
    }
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    Bit_Vet(Mapping_gHasSeenMessage, playerid); // Make sure that if different player with the same playerid connects sees the info message for the first time.
    Mapping_gPlayerEditingID[playerid] = DEFAULT_OBJECT_ID; // Make sure the player isn't editing the object if they were.
    return 1;
}