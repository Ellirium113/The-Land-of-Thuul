//::///////////////////////////////////////////////
//:: Name: pgs_con_self_n
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the player didn't use the GuildJournal
    on him/her self.
*/
//:://////////////////////////////////////////////
//:: Created By:
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    return !GetLocalInt (GetPCSpeaker(), "Target_Self");
}
