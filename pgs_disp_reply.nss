//::///////////////////////////////////////////////
//:: Name: pgs_disp_reply
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the selected guild message reply
    information to the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

int StartingConditional()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Display the selected reply post to the PC.
    //--------------------------------------------
    DisplayCurrentGuildMessageReply (GetLocalInt (oPlayer, "Player_Guild_Number"),
        GetLocalInt (oPlayer, "Message_Number"), GetLocalInt (oPlayer,
        "Reply_Number"));

    return TRUE;  /*Conditional.*/
}
