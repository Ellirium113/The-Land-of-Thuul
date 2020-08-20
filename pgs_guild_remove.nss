//::///////////////////////////////////////////////
//:: Name: pgs_guild_remove
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script will remove the current player
    from his/her current guild.  If the player
    is also the guild leader, then the entire
    guild will be permanently removed.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Check if player is the guild leader.
    //--------------------------------------------
    if (GetLocalInt (oPlayer, "Player_Guild_Rank") == 4)
        PermanentlyRemoveGuild (GetLocalInt (oPlayer, "Player_Guild_Number"));

    else
    {
        SendPGSGuildNotice (GetLocalInt (oPlayer, "Player_Guild_Number"),
            GetName (oPlayer) + " has disbanded from the guild.");
        RemoveGuildDataFromPlayer (oPlayer);
    }
}
