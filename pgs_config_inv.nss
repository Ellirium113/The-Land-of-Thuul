//::///////////////////////////////////////////////
//:: Name: pgs_config_inv
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Configure Player Guild System (PGS) setting
    for invitations.
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
    SetPlayerSettingValue (oPlayer, "Invitations", !GetPlayerSettingValue
        (oPlayer, "Invitations"));
}
