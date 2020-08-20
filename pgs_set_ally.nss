//::///////////////////////////////////////////////
//:: Name: pgs_set_ally
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Send a faction request to the leader of the
    selected guild.  If accepted, guilds will
    become allies.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximius
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();
    int iGuild = GetLocalInt (oPlayer, "Temp_Guild_List_Number");

    //--------------------------------------------
    //Update guild faction towards one another.
    //--------------------------------------------
    SetGuildFactionToAlly (oPlayer, GetPlayerObjectGuildLeader (iGuild));
}
