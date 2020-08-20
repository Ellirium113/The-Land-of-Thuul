//::///////////////////////////////////////////////
//:: Name: pgs_con_ally
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the two guilds are allies.  If so,
    don't display this option to the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Check faction between  guilds.
    //--------------------------------------------
    return !(GetFactionStatusBetweenGuilds (GetLocalInt (oPlayer, "Player_Guild_Number"),
        GetLocalInt (oPlayer, "Temp_Guild_List_Number")) == 1);
}
