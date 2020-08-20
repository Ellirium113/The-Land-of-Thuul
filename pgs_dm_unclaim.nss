//::///////////////////////////////////////////////
//:: Name: pgs_dm_unclaim
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Unclaim the targeted territory.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();
    object oFlag = GetLocalObject (oPlayer, "Object_Target");
    int iTerritory = GetPGSFlagTerritory (oFlag);
    int iTerritoryGuild = GetTerritoryGuildNumber (iTerritory);

    if (iTerritoryGuild == 0)  /*Check if claimed, first.*/
    {
        SendMessageToPC (oPlayer, "This territory is already unclaimed.");
        return;
    }

    //--------------------------------------------
    //Send notice to guild of abandoned territory.
    //--------------------------------------------
    SendPGSGuildNotice (iTerritoryGuild, "The territory located in " + GetName
        (GetArea (oFlag)) + " has been abandoned.");
    SendMessageToPC (oPlayer, "Targeted territory has been succesfully unclaimed.");

    //--------------------------------------------
    //Clear territory information from the DB.
    //--------------------------------------------
    SetTerritoryGuildNumber (iTerritory, 0);
    SetTerritoryName (iTerritory, "");

    //--------------------------------------------
    //Update guild territory guild count.
    //--------------------------------------------
    SetGuildTerritoryCount (iTerritoryGuild, GetGuildTerritoryCount
        (iTerritoryGuild) - 1);
}
