//::///////////////////////////////////////////////
//:: Name: pgs_disp_ranks
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the rank names for the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    int iCount = 4;
    int iGuild = GetLocalInt (GetLocalObject (GetPCSpeaker(), "Object_Target"),
        "Player_Guild_Number");

    for (; iCount >= 1; iCount--)  /*Loop through, and display rank names.*/
        SetCustomToken (3035 + iCount, GetModuleGuildRankName (iGuild, iCount));

    return TRUE;  /*Conditional.*/
}
