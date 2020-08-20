//::///////////////////////////////////////////////
//:: Name: pgs_mssngr_oc
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    OnConversation script for PGS Messengers.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetLastSpeaker();

    if (GetListenPatternNumber() == -1)  /*Check for starting conversation.*/
    {
        ClearAllActions();
        BeginConversation();
        return;
    }

    //--------------------------------------------
    //Listen for correct player.
    //--------------------------------------------
    if (oPlayer != GetLocalObject (OBJECT_SELF, "Temp_Player"))
        return;

    if (GetIsListening (OBJECT_SELF))  /*Check if messenger is listening.*/
    {
        if (GetPlayerSettingValue (oPlayer, "Guild_Chat") == FALSE)
            SendMessageToPC (oPlayer, "You cannot send guild messages, " +
                "as you are currently ignoring them.");
        else
            SendPGSGuildMessage (GetLocalInt (oPlayer, "Player_Guild_Number"),
                oPlayer, GetMatchedSubstring (0));
    }
}
