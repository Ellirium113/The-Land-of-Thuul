//::///////////////////////////////////////////////
//:: Name: pgs_config_achat
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Configure Player Guild System (PGS) setting
    for ally chat messages.
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
    SetPlayerSettingValue (oPlayer, "Ally_Chat", !GetPlayerSettingValue
        (oPlayer, "Ally_Chat"));
}
