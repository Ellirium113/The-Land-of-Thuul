//::///////////////////////////////////////////////
//:: Name: pgs_con_dm_unclm
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the option to unclaim a territory is
    available to the DM.

    Note: Only available if they targeted a
    territory flag.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    return GetLocalInt (GetPCSpeaker(), "Target_Is_Territory");
}
