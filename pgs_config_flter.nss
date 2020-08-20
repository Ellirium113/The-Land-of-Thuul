//::///////////////////////////////////////////////
//:: Name: pgs_config_flter
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Configure Player Guild System (PGS) setting
    for list filtering.
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
    SetPlayerSettingValue (oPlayer, "List_Filtering", !GetPlayerSettingValue
        (oPlayer, "List_Filtering"));
}
