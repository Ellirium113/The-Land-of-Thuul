//::///////////////////////////////////////////////
//:: Name: pgs_glist_fctn
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the current faction between the two
    guilds to the player.
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
    //Clear custom tokens for advanced information.
    //--------------------------------------------
    SetCustomToken (3030, ""); SetCustomToken (3031, ""); SetCustomToken (3032, "");

    //--------------------------------------------
    //Display guild faction towards selected guild
    //--------------------------------------------
    switch (GetFactionStatusBetweenGuilds (GetLocalInt (oPlayer,
        "Player_Guild_Number"), GetLocalInt (oPlayer, "Temp_Guild_List_Number")))
    {
        case -1:  SetCustomToken (3030, "Enemies.");  break;
        case  0:  SetCustomToken (3031, "Neutral.");  break;
        case  1:  SetCustomToken (3032, "Allies.");  break;
    }

    return TRUE;  /*Conditional.*/
}
