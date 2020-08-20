//::///////////////////////////////////////////////
//:: Name: pgs_rank_con_rankg2
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the player's rank is greater than 2.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    return (GetLocalInt (GetPCSpeaker(), "Player_Guild_Rank") > 2);
}
