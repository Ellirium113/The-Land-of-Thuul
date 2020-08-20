//::///////////////////////////////////////////////
//:: Name: pgs_claimed_y
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the targeted territory has been
    claimed.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_terr"

int StartingConditional()
{
    return GetTerritoryGuildNumber (GetLocalInt (GetPCSpeaker(), "Territory_Number"));
}
