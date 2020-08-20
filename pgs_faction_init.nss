//::///////////////////////////////////////////////
//:: Name: pgs_faction_init
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Setup the intial custom tokens for this
    conversation.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    object oLeader = GetPCSpeaker();  /*Guild leader.*/
    object oSender = GetLocalObject (oLeader, "Object_Activator");
    int iCount = 1;
    int iFaction;

    //--------------------------------------------
    //Reset faction custom tokens.
    //--------------------------------------------
    SetCustomToken (3030, "");  SetCustomToken (3031, "");  SetCustomToken (3032, "");
    SetCustomToken (3034, GetName (oSender));

    for (; iCount <= 2; iCount++)  /*Set current and new faction tokens.*/
    {
        if (iCount == 1)
            iFaction = GetFactionStatusBetweenGuilds (GetLocalInt (oSender,
                "Player_Guild_Number"), GetLocalInt (oLeader, "Player_Guild_Number"));
        else
            iFaction = GetLocalInt (oSender, "New_Guild_Faction");

        //--------------------------------------------
        //Set faction name to be displayed.
        //--------------------------------------------
        switch (iFaction)
        {
            case -1:  SetCustomToken (3030, "enemies");  break;
            case  0:  SetCustomToken (3031, "neutral");  break;
            case  1:  SetCustomToken (3032, "allies");  break;
        }
    }
    return TRUE;
}
