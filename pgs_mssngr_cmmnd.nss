//::///////////////////////////////////////////////
//:: Name: pgs_mssngr_cmmnd
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script will set several custom tokens
    displaying the status for several PGS
    messenger commands.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    //--------------------------------------------
    //Display current follow command status.
    //--------------------------------------------
    if (GetLocalInt (OBJECT_SELF, "Messenger_Following"))
        SetCustomToken (2001, "Stop");
    else
        SetCustomToken (2001, "Start");

    //--------------------------------------------
    //Display current listen command status.
    //--------------------------------------------
    if (GetIsListening (OBJECT_SELF))
        SetCustomToken (2002, "Stop");
    else
        SetCustomToken (2002, "Start");

    return TRUE;  /*Conditional.*/
}
