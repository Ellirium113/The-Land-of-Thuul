//::///////////////////////////////////////////////
//:: Name: pgs_disp_iguild
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display invite sender's guild information to
    the player.
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
    DisplayGuildInformation (GetLocalInt (GetLocalObject (GetPCSpeaker(),
        "Object_Activator"), "Player_Guild_Number"));

    return TRUE;  /*Conditional.*/
}
