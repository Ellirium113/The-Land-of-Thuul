//::///////////////////////////////////////////////
//:: Name: pgs_disp_prank
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the player's rank name.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    object oPlayer = GetPCSpeaker();
    int iRank = GetLocalInt (oPlayer, "Player_Guild_Rank");

    //--------------------------------------------
    //Display the player's rank and options.
    //--------------------------------------------
    SetCustomToken (3013, GetModuleGuildRankName (GetLocalInt (oPlayer,
        "Player_Guild_Number"), iRank));
    SetCustomToken (3014, GetModuleRankOptions (iRank));

    return TRUE;  /*Conditional*/
}
