//::///////////////////////////////////////////////
//:: Name: pgs_set_enemy
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Set the two guilds to become enemies.
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
        GetLocalInt (oPlayer, "Temp_Guild_List_Number"));
}
