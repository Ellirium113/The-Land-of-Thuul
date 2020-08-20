//::///////////////////////////////////////////////
//:: Name: pgs_disp_sets
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Display the current player settings.
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
    //Set "Ally_Chat" setting status.
    //--------------------------------------------
    if (GetPlayerSettingValue (oPlayer, "Ally_Chat") == TRUE)
        SetCustomToken (3003, "Enabled");
    else
        SetCustomToken (3003, "Disabled");

    //--------------------------------------------
    //Set "Guild_Chat" setting status.
    //--------------------------------------------
    if (GetPlayerSettingValue (oPlayer, "Guild_Chat") == TRUE)
        SetCustomToken (3004, "Enabled");
    else
        SetCustomToken (3004, "Disabled");

    //--------------------------------------------
    //Set "Invitations" setting status.
    //--------------------------------------------
    if (GetPlayerSettingValue (oPlayer, "Invitations") == TRUE)
        SetCustomToken (3005, "Enabled");
    else
        SetCustomToken (3005, "Disabled");

    //--------------------------------------------
    //Set "List_Filtering" setting status.
    //--------------------------------------------
    if (GetPlayerSettingValue (oPlayer, "List_Filtering") == TRUE)
        SetCustomToken (3006, "Enabled");
    else
        SetCustomToken (3006, "Disabled");

    //--------------------------------------------
    //Set "Peace_Offers" setting status.
    //--------------------------------------------
    if (GetPlayerSettingValue (oPlayer, "Faction_Offers") == TRUE)
        SetCustomToken (3007, "Enabled");
    else
        SetCustomToken (3007, "Disabled");
}
