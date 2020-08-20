//::///////////////////////////////////////////////
//:: Name: pgs_dm_privacy
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Allow the DM to edit the selected guild's
    current privacy status.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();
    int iGuild = GetLocalInt (oPlayer, "Temp_Guild_List_Number");

    //--------------------------------------------
    //Check current guild privacy status.
    //--------------------------------------------
    if (GetModuleGuildPrivacyStatus (iGuild) == "private")
    {
        SetModuleGuildPrivacyStatus (iGuild, "public");
        SendPGSGuildNotice (iGuild, "Guild privacy has been updated.");
    }

    else  /*Guild is public, going to private.  Check for active guild wars.*/
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
                SendMessageToPC (oPlayer, "You cannot change the selected " +
                    "guild's privacy status to private at this time.  It is " +
                    "currently involved in one or more guild wars.");
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
