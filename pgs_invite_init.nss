//::///////////////////////////////////////////////
//:: Name: pgs_invite_init
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script will display some information using
    a conversation to the player who recieved the
    guild invitation.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    object oSender = GetLocalObject (GetPCSpeaker(), "Object_Activator");
    int iGuild = GetLocalInt (oSender, "Player_Guild_Number");
    int iJoiningFee = GetModuleGuildJoiningFee (iGuild);

    //--------------------------------------------
    //Set some custom tokens for the player.
    //--------------------------------------------
    SetCustomToken (3034, GetName (oSender));
    SetCustomToken (3008, GetModuleGuildName (iGuild));

    if (iJoiningFee == 0)
        SetCustomToken (3080, "no joining fee for this invitation.");
    else
        SetCustomToken (3080, "a " + IntToString (iJoiningFee) + "gp joining fee.");

    return TRUE;  /*Conditional.*/
}
