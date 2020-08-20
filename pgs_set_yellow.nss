//::///////////////////////////////////////////////
//:: Name: pgs_set_yellow
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Set the guild color effect for the players
    guild.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    SetModuleGuildColor (GetLocalInt (GetPCSpeaker(), "Player_Guild_Number"), 2);
}
