//::///////////////////////////////////////////////
//:: Name: pgs_set_tenemy
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Change the faction of the two guilds to enemies.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Update guild faction towards one another.
    //--------------------------------------------
    SetGuildFactionToEnemy (GetLocalInt (oPlayer, "Player_Guild_Number"),
        GetLocalInt (GetLocalObject (oPlayer, "Object_Target"), "Player_Guild_Number"));
}
