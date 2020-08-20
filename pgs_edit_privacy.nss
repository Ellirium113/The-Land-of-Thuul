//::///////////////////////////////////////////////
//:: Name: pgs_edit_privacy
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display several custom tokens displaying the
    guild's current privacy status, and what they
    can change it to (should they decide to).
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
    if (GetModuleGuildPrivacyStatus (GetLocalInt (GetPCSpeaker(), "Player_Guild_Number")) == "public")
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
