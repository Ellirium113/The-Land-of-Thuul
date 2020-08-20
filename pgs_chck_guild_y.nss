//::///////////////////////////////////////////////
//:: Name: pgs_chck_guild_y
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    If no errors occured while checking if the
    player is able to start a guild, then display
    no errors and allow the player to continue.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    return !GetLocalInt (GetPCSpeaker(), "Guild_Data_Error");
}
