//::///////////////////////////////////////////////
//:: Name: pgs_con_claim
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if a territory marker was used to
    start the territory conversation.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_terr"

int StartingConditional()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Check if abandon territory option is avail.
    //--------------------------------------------
    if (GetLocalInt (oPlayer, "Player_Guild_Rank") == 4)
        if (GetLocalInt (oPlayer, "Player_Guild_Number") != GetTerritoryGuildNumber (GetLocalInt (oPlayer, "Territory_Number")))
            return GetLocalInt (oPlayer, "Territory_Marker_Used");

    return FALSE;  /*Conditional.*/
}
