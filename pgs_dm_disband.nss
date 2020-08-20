//::///////////////////////////////////////////////
//:: Name: pgs_dm_disband
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script will disband the targeted player
    from his/her guild.

    Note: Available only to DMs.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();
    object oTarget = GetLocalObject (oPlayer, "Object_Target");

    //--------------------------------------------
    //Check if the player is in a guild.
    //--------------------------------------------
    if (GetLocalInt (oTarget, "Player_Guild_Number") != 0)
        RemoveGuildDataFromPlayer (oTarget);
    else
        SendMessageToPC (oPlayer, GetName (oTarget) + " is not currently " +
            "involved in a guild to be disbanded from.");
}
