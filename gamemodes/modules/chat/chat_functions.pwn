public e_COMMAND_ERRORS:OnPlayerCommandReceived(playerid, cmdtext[], e_COMMAND_ERRORS:success) 
{
    if (success == COMMAND_UNDEFINED) 
    {
        new 
            guessCmd[32], 
            dist = Command_Guess(guessCmd, cmdtext);

        if (dist < 3)
        {
            va_SendClientMessage(playerid, X11_VIOLET_RED_1, "[Error]:"WHITE" \"%s\" is not found, did you mean \"%s\"?", cmdtext, guessCmd);
        }
        else
        {
            va_SendClientMessage(playerid, X11_VIOLET_RED_1, "[Error]:"WHITE" \"%s\" is not found", cmdtext);
        }
        return COMMAND_SILENT;
    }
    return COMMAND_OK;
}

public e_COMMAND_ERRORS:OnPlayerCommandPerformed(playerid, cmdtext[], e_COMMAND_ERRORS:success)
{
    if (!success)
    {
        return COMMAND_UNDEFINED;
    }
    return COMMAND_OK;
}

// Change 30 to how many mins u want this to trigger
ptask Chat_Hints[30 * 60 * 1000]()
{
	new txt = random(sizeof(randomHint));
    va_SendClientMessageToAll(Y_LIGHT_SKY_BLUE , "[Hint]:"WHITE" %s", randomHint[txt]);
}

