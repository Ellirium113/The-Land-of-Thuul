//::///////////////////////////////////////////////
//:: Name: pgs_terr_abandon
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Abandon the selected territory.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"
#include "inc_gsystem_terr"

void main()
{
    object oPlayer = GetPCSpeaker();
    int iGuild = GetLocalInt (oPlayer, "Player_Guild_Number");
    int iTerritory = GetLocalInt (oPlayer, "Territory_Number");

    //--------------------------------------------
    //Inform guild of abandoned territory.
    //--------------------------------------------
    SendPGSGuildNotice (iGuild, "The territory located in " + GetName (GetArea
        (GetObjectByTag ("Territory_Flag_" + IntToString (iTerritory)))) +
        " has been abandoned.");

    //--------------------------------------------
    //Now we abandon the territory.
    //--------------------------------------------
    SendMessageToPC (oPlayer, "This territory has been abandoned.");
    SetTerritoryGuildNumber (iTerritory, 0);
    SetTerritoryName (iTerritory, "");

    //--------------------------------------------
    //Update guild territory guild count.
    //--------------------------------------------
    SetGuildTerritoryCount (iGuild, GetGuildTerritoryCount (iGuild) - 1);
}
