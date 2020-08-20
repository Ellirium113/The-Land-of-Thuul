//::///////////////////////////////////////////////
//:: Name: pgs_fac_accept
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    New faction change has been accepted, time to
    update guild stance and player faction settings.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();
    int iFaction = GetLocalInt (oPlayer, "New_Guild_Faction");
    int iPlayerGuild = GetLocalInt (oPlayer, "Player_Guild_Number");
    int iTargetGuild = GetLocalInt (GetLocalObject (oPlayer, "Object_Activator"),
        "Player_Guild_Number");
    string sFaction;

    if (iFaction == 0)  /*Neutral faction.*/
    {
        SetModuleRecentPGSActivity ("Neutral: " + GetModuleGuildName
            (iPlayerGuild) + " - " + GetModuleGuildName (iTargetGuild));
        sFaction = "neutral";
    }
    else  /*Allies.*/
    {
        SetModuleRecentPGSActivity ("Allies: " + GetModuleGuildName
            (iPlayerGuild) + " - " + GetModuleGuildName (iTargetGuild));
        sFaction = "allies";
    }

    //--------------------------------------------
    //Inform both guilds of change.
    //--------------------------------------------
    SendPGSGuildNotice (iPlayerGuild, "Guild faction with the guild '" +
        GetModuleGuildName (iTargetGuild) + "' has changed; they are now " +
        "considered " + sFaction + ".");
    SendPGSGuildNotice (iTargetGuild, "Guild faction with the guild '" +
        GetModuleGuildName (iPlayerGuild) + "' has changed; they are now " +
        "considered " + sFaction + ".");

    //--------------------------------------------
    //Recompute player factions for all players.
    //--------------------------------------------
    SetFactionStatusBetweenGuilds (iPlayerGuild, iTargetGuild, iFaction);
    ComputeGuildPlayerFactions (iPlayerGuild);
}
