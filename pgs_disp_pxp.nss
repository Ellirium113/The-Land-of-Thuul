//::///////////////////////////////////////////////
//:: Name: pgs_disp_pxp
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the guild awardable XP amount for
    his/her guild.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    //--------------------------------------------
    //Display the information to the player.
    //--------------------------------------------
    SetCustomToken (3053, IntToString (GetModuleGuildAwardableXP (GetLocalInt
        (GetPCSpeaker(), "Player_Guild_Number"))));

    return TRUE;  /*Conditional.*/
}
