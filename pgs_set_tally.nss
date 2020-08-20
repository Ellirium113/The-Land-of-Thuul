//::///////////////////////////////////////////////
//:: Name: pgs_set_tally
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

    //--------------------------------------------
    //Update guild faction towards one another.
    //--------------------------------------------
    SetGuildFactionToAlly (oPlayer, GetLocalObject (oPlayer, "Object_Target"));
}
