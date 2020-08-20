//::///////////////////////////////////////////////
//:: Name: pgs_target_rem
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Remove the targeted player from the guild.
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
    int iGuild = GetLocalInt (oPlayer, "Player_Guild_Number");

    //--------------------------------------------
    //Ensure players are both of the same guild.
    //--------------------------------------------
    if (GetLocalInt (oTarget, "Player_Guild_Number") != iGuild)
    {
        SendMessageToPC (oPlayer, "You cannot remove someone from another guild.");
        return;
    }

    //--------------------------------------------
    //Remove the player and inform the guild.
    //--------------------------------------------
    RemoveGuildDataFromPlayer (oTarget);
    SendPGSGuildNotice (iGuild, GetName (oTarget) + " has been removed from " +
        "the guild.");
}
