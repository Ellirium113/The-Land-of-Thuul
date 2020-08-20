//::///////////////////////////////////////////////
//:: Name: pgs_create_msg
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Create the actual message for the selected
    guild.
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
    int iCount = 8;
    int iReply;

    //--------------------------------------------
    //Before adding our new message, we must
    //shift all current elements by one.
    //--------------------------------------------
    for (; iCount >= 2; iCount--)
    {
        SetModuleGuildTitle (iGuild, iCount, GetModuleGuildTitle (iGuild, iCount - 1));
        SetModuleGuildPost (iGuild, iCount, GetModuleGuildPost (iGuild, iCount - 1));
        SetModuleGuildAuthor (iGuild, iCount, GetModuleGuildAuthor (iGuild, iCount - 1));

        //----------------------------------------
        //Shift all message replies one position.
        //----------------------------------------
        for (iReply = 1; iReply <= 8; iReply++)
        {
            SetModuleGuildReplyTitle (iGuild, iCount, iReply,
                GetModuleGuildReplyTitle (iGuild, iCount - 1, iReply));
            SetModuleGuildReplyPost (iGuild, iCount, iReply,
                GetModuleGuildReplyPost (iGuild, iCount - 1, iReply));
            SetModuleGuildReplyAuthor (iGuild, iCount, iReply,
                GetModuleGuildReplyAuthor (iGuild, iCount - 1, iReply));
        }
    }

    //--------------------------------------------
    //Now we can create the message at position 1.
    //--------------------------------------------
    SetModuleGuildTitle (iGuild, 1, GetLocalString (oPlayer, "Temp_Message_Title"));
    SetModuleGuildPost (iGuild, 1, GetLocalString (oPlayer, "Temp_Message_Post"));
    SetModuleGuildAuthor (iGuild, 1, GetName (oPlayer));

    //--------------------------------------------
    //Replies from this pos. copied, now clear 'em.
    //--------------------------------------------
    for (iReply = 1; iReply <= 8; iReply++)
    {
        SetModuleGuildReplyTitle (iGuild, 1, iReply, "");
        SetModuleGuildReplyPost (iGuild, 1, iReply, "");
        SetModuleGuildReplyAuthor (iGuild, 1, iReply, "");
    }
}
