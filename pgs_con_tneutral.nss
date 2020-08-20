//::///////////////////////////////////////////////
//:: Name: pgs_con_tneutral
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the faction between the player's
    guild and the targeted guild are neutral.
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
    return !(GetFactionStatusBetweenGuilds (GetLocalInt (oPlayer,
        "Player_Guild_Number"), GetLocalInt (GetLocalObject (oPlayer,
        "Object_Target"), "Player_Guild_Number")) == 0);
}
