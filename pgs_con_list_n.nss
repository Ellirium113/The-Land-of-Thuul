//::///////////////////////////////////////////////
//:: Name: pgs_con_list_n
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Determine if the option to view the next set
    is available to the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    return GetLocalInt (GetPCSpeaker(), "Next_Set_Is_Available");
}
