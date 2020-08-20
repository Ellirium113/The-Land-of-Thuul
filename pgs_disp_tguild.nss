//::///////////////////////////////////////////////
//:: Name: pgs_disp_tguild
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script will display the target player's
    guild information to the PC.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    object oPlayer = GetPCSpeaker();
    int iPlayerGuild = GetLocalInt (oPlayer, "Player_Guild_Number");
    int iTargetGuild = GetLocalInt (GetLocalObject (oPlayer, "Object_Target"),
        "Player_Guild_Number");

    //--------------------------------------------
    //Display info if guild is public or ally.
    //--------------------------------------------
    if ((GetModuleGuildPrivacyStatus (iTargetGuild) == "public") || (iPlayerGuild == iTargetGuild) || (GetFactionStatusBetweenGuilds (iPlayerGuild, iTargetGuild) == 1))
        DisplayGuildInformation (iTargetGuild);

    else
    {
        //--------------------------------------------
        //Private guild - do NOT show information.
        //--------------------------------------------
        SetCustomToken (3008, "???? ?? ??????");                 /*Guild name.*/
        SetCustomToken (3009, "??????");                      /*Guild privacy.*/
        SetCustomToken (3010, "??");                     /*Guild member count.*/
        SetCustomToken (3011, "????? ????????");               /*Guild leader.*/
        SetCustomToken (3012, "????? ?? ???? ???? ???? " +/*Guild description.*/
            "??????? ???????? ???? ??????? ??? ????? ?????? ???");

        //--------------------------------------------
        //Inform player of current status.
        //--------------------------------------------
        SendMessageToPC (oPlayer, "You are unable to gather any guild-related " +
            "information from the targeted player.");
    }

    return TRUE;  /*Conditional.*/
}
