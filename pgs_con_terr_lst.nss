//::///////////////////////////////////////////////
//:: Name: pgs_con_terr_lst
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the option to list guild territories
    is available to the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_cnfg"

int StartingConditional()
{
    return ((PGS_ENABLE_TERRITORY_LIST) && (GetLocalInt (GetPCSpeaker(), "Player_Guild_Number") != 0));
}
