//::///////////////////////////////////////////////
//:: Name: pgs_disp_pguild
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the player's guild information.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    //--------------------------------------------
    //Display the specified guild information.
    //--------------------------------------------
    DisplayGuildInformation (GetLocalInt (GetPCSpeaker(), "Player_Guild_Number"));

    return TRUE;  /*Conditional.*/
}
