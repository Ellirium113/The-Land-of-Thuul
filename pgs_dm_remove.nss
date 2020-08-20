//::///////////////////////////////////////////////
//:: Name: pgs_dm_remove
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Permanently remove the selected guild from
    the list.

    Note: Only available to DMs.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    PermanentlyRemoveGuild (GetLocalInt (GetPCSpeaker(), "Temp_Guild_List_Number"));
}
