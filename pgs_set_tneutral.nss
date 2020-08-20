//::///////////////////////////////////////////////
//:: Name: pgs_set_tneutral
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Set the two guild's faction to neutral.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();
    int iTargetGuild = GetLocalInt (GetLocalObject (oPlayer, "Object_Target"),
        "Player_Guild_Number");

    //--------------------------------------------
    //Update guild faction towards one another.
    //--------------------------------------------
    SetLocalObject (oPlayer, "Object_Target", GetPlayerObjectGuildLeader
        (iTargetGuild));
    SetGuildFactionToNeutral (GetLocalInt (oPlayer, "Player_Guild_Number"),
        iTargetGuild);
}
