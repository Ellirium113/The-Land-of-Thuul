//::///////////////////////////////////////////////
//:: Name: pgs_create_reply
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Add this new reply to the top of the reply
    list for the selected guild message.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();
    int iGuild = GetLocalInt (oPlayer, "Player_Guild_Number");
    int iMessage = GetLocalInt (oPlayer, "Message_Number");
    int iCount = 8;

    //--------------------------------------------
    //Before adding our new reply, we must
    //shift all current elements by one.
    //--------------------------------------------
    for (; iCount >= 2; iCount--)
    {
        SetModuleGuildReplyTitle (iGuild, iMessage, iCount,
            GetModuleGuildReplyTitle (iGuild, iMessage, iCount - 1));
        SetModuleGuildReplyPost (iGuild, iMessage, iCount,
            GetModuleGuildReplyPost (iGuild, iMessage, iCount - 1));
        SetModuleGuildReplyAuthor (iGuild, iMessage, iCount,
            GetModuleGuildReplyAuthor (iGuild, iMessage, iCount - 1));
    }

    //--------------------------------------------
    //Now create new reply at position 1 for message.
    //--------------------------------------------
    SetModuleGuildReplyTitle (iGuild, iMessage, 1, GetLocalString (oPlayer,
        "Temp_Reply_Title"));
    SetModuleGuildReplyPost (iGuild, iMessage, 1, GetLocalString (oPlayer,
        "Temp_Reply_Post"));
    SetModuleGuildReplyAuthor (iGuild, iMessage, 1, GetName (oPlayer));
}
