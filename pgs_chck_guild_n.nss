//::///////////////////////////////////////////////
//:: Name: pgs_chck_guild_n
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    If an error occured during the check process,
    then halt the player from continuing and
    display and and all errors.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    return GetLocalInt (GetPCSpeaker(), "Guild_Data_Error");
}
