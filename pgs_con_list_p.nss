//::///////////////////////////////////////////////
//:: Name: pgs_con_list_p
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Determine if the option to view the previous
    set is available to the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    return GetLocalInt (GetPCSpeaker(), "Previous_Set_Is_Available");
}
