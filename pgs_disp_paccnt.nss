//::///////////////////////////////////////////////
//:: Name: pgs_disp_paccnt
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the player's guild account information.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    //--------------------------------------------
    //Display account info using custom tokens.
    //--------------------------------------------
    SetCustomToken (3016, IntToString (GetModuleGuildAccountValue
        (GetLocalInt (GetPCSpeaker(), "Player_Guild_Number"))));

    return TRUE;  /*Conditional*/
}
