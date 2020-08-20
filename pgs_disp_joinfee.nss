//::///////////////////////////////////////////////
//:: Name: pgs_disp_joinfee
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the current joining fee for the player's
    guild.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    //--------------------------------------------
    //Set the custom token to display joining fee.
    //--------------------------------------------
    SetCustomToken (3080, IntToString (GetModuleGuildJoiningFee (GetLocalInt
        (GetPCSpeaker(), "Player_Guild_Number"))));

    return TRUE;  /*Conditional.*/
}
