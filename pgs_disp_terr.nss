//::///////////////////////////////////////////////
//:: Name: pgs_disp_terr
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the selected territory guild info
    to the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    object oPlayer = GetPCSpeaker();
    int iTerritory = GetLocalInt (oPlayer, "Territory_Number");
    int iGuildTerritory = GetTerritoryGuildNumber (iTerritory);
    int iPlayerGuild = GetLocalInt (oPlayer, "Player_Guild_Number");

    //--------------------------------------------
    //Check if to display guild name to the player.
    //--------------------------------------------
    if ((GetModuleGuildPrivacyStatus (iGuildTerritory) == "public") || (iPlayerGuild == iGuildTerritory) || (GetFactionStatusBetweenGuilds (iPlayerGuild, iGuildTerritory) == 1))
        SetCustomToken (4003, GetModuleGuildName (iGuildTerritory));
    else
        SetCustomToken (4003, "a private guild.");

    SetCustomToken (4002, GetTerritoryGuildName (iTerritory));

    return TRUE;
}
