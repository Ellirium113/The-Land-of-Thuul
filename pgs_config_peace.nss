//::///////////////////////////////////////////////
//:: Name: pgs_config_peace
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Configure Player Guild System (PGS) setting
    for peace offers.
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
    SetPlayerSettingValue (oPlayer, "Faction_Offers", !GetPlayerSettingValue
        (oPlayer, "Faction_Offers"));
}
