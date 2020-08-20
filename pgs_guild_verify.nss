//::///////////////////////////////////////////////
//:: Name: pgs_guild_verify
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script will display the current data
    set for the guild about to be created.  This is
    to ensure for the player that he/she has set
    everything up accordingly.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    object oPlayer = GetPCSpeaker();

    //-------------------------------------------
    //Set tokens displaying temporary guild info.
    //-------------------------------------------
    SetCustomToken (3008, GetLocalString (oPlayer, "Temp_Guild_Name"));
    SetCustomToken (3009, GetLocalString (oPlayer, "Temp_Guild_Privacy"));
    SetCustomToken (3012, GetLocalString (oPlayer, "Temp_Guild_Description"));

    return TRUE;  /*Conditional*/
}
