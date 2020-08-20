//::///////////////////////////////////////////////
//:: Name: pgs_set_neutral
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
    int iGuild = GetLocalInt (oPlayer, "Temp_Guild_List_Number");

    //--------------------------------------------
    //Update guild faction towards one another.
    //--------------------------------------------
    SetLocalObject (oPlayer, "Object_Target", GetPlayerObjectGuildLeader (iGuild));
    SetGuildFactionToNeutral (GetLocalInt (oPlayer, "Player_Guild_Number"), iGuild);
}
