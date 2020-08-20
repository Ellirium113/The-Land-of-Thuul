//::///////////////////////////////////////////////
//:: Name: pgs_set_privacy
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Change the guild's privacy status.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();
    int iGuild = GetLocalInt (oPlayer, "Player_Guild_Number");

    //--------------------------------------------
    //Check current guild privacy status.
    //--------------------------------------------
    if (GetModuleGuildPrivacyStatus (iGuild) == "private")
    {
        SetModuleGuildPrivacyStatus (iGuild, "public");
        SendPGSGuildNotice (iGuild, "Guild privacy has been updated.");
    }

    else
    {
        int iCount = 1;
        int iMaxGuild = GetModuleMaxGuildNumber();

        //--------------------------------------------
        //ONLY if no guild wars can we become private.
        //--------------------------------------------
        for (; iCount <= iMaxGuild; iCount++)
        {
            //--------------------------------------------
            //Check for guild war based on faction.
            //--------------------------------------------
            if (GetFactionStatusBetweenGuilds (iGuild, iCount) == -1)
            {
                SendMessageToPC (oPlayer, "You're guild is currently involved " +
                    "in one or more guild wars, and cannot become private.");
                return;
            }
        }

        //--------------------------------------------
        //If we get here, set guild to private.
        //--------------------------------------------
        SetModuleGuildPrivacyStatus (iGuild, "private");
        SendPGSGuildNotice (iGuild, "Guild privacy has been updated.");
    }
}
