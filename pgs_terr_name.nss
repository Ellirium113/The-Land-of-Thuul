//::///////////////////////////////////////////////
//:: Name: pgs_terr_name
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Set the new territory name specified by the
    player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_terr"

void main()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Update territory name.
    //--------------------------------------------
    SetTerritoryName (GetLocalInt (oPlayer, "Territory_Number"), GetLocalString
        (oPlayer, "Temp_Territory_Name"));
}
