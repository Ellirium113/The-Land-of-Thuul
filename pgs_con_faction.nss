//::///////////////////////////////////////////////
//:: Name: pgs_con_faction
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the player is in a guild, and not
    the same one selected in the guild list.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    object oPlayer = GetPCSpeaker();

    if (GetLocalInt (oPlayer, "Player_Guild_Number") != 0)
        return !GetLocalInt (oPlayer, "Same_Guild");

    return FALSE;
}
