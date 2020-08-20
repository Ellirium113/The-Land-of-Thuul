//::///////////////////////////////////////////////
//:: Name: pgs_disp_ter_guild
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display guild information for the owner of
    this territory.
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
    int iGuild = GetTerritoryGuildNumber (GetLocalInt (oPlayer, "Territory_Number"));

    //--------------------------------------------
    //Display info if guild is public or ally.
    //--------------------------------------------
    if ((GetModuleGuildPrivacyStatus (iGuild) == "public") || (iPlayerGuild == iGuild) || (GetFactionStatusBetweenGuilds (iPlayerGuild, iGuild) == 1))
        DisplayGuildInformation (iGuild);

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
    }

    return TRUE;  /*Conditional.*/
}
