//::///////////////////////////////////////////////
//:: Name: pgs_con_account
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if access to the guild account options
    are available to the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_cnfg"

int StartingConditional()
{
    if (GetLocalInt (GetPCSpeaker(), "Player_Guild_Number") != 0)
        return !PGS_DISABLE_VAULT_GNOME_FROM_CONVO;

    return FALSE;  /*Conditional.*/
}
