//::///////////////////////////////////////////////
//:: Name: pgs_config_gchat
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Configure Player Guild System (PGS) setting
    for guild chat messages.
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
    //Change current player PGS setting.
    //--------------------------------------------
    SetPlayerSettingValue (oPlayer, "Guild_Chat", !GetPlayerSettingValue
        (oPlayer, "Guild_Chat"));
}
