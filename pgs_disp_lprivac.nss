//::///////////////////////////////////////////////
//:: Name: pgs_disp_lprivac
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the selected guild's privacy status
    to the DM.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    //--------------------------------------------
    //Set tokens based on current privacy status.
    //--------------------------------------------
    if (GetModuleGuildPrivacyStatus (GetLocalInt (GetPCSpeaker(), "Temp_Guild_List_Number")) == "public")
    {
        SetCustomToken (3009, "public");
        SetCustomToken (3019, "private");
    }
    else
    {
        SetCustomToken (3009, "private");
        SetCustomToken (3019, "public");
    }

    return TRUE;  /*Conditional.*/
}
