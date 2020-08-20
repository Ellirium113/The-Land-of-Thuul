//::///////////////////////////////////////////////
//:: Name: pgs_con_new
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the option to create a new guild is
    available to the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_cnfg"

int StartingConditional()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Check if guild creation restriction in effect.
    //--------------------------------------------
    if (PGS_RESTRICT_GUILD_CREATION)
        return GetLocalInt (oPlayer, "Guild_Creation_Access");

    else
        return (GetLocalInt (oPlayer, "Player_Guild_Number") == 0);
}
