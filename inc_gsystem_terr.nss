//::///////////////////////////////////////////////
//:: Name: inc_gsystem_terr
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Include file to handle guild territory related
    commands/functions.

    NOTE: Do not modify this script in any way!
        The only customizeable script is:
        "inc_gsystem_cnfg".
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_cnfg"

//**************************** PGS TERRITORY INFO ****************************\\

//------------------------------------------------
//GET functions for territory objects.
//------------------------------------------------
int GetPGSDoorTerritory (object oDoor);
int GetPGSFlagTerritory (object oFlag);
int GetPGSMarkerTerritory (object oMarker);
int GetPGSStorageTerritory (object oChest);

//------------------------------------------------
//GET & SET functions for territory guild number.
//------------------------------------------------
int GetTerritoryGuildNumber (int iTerritory);
void SetTerritoryGuildNumber (int iTerritory, int iGuild);

//------------------------------------------------
//GET & SET functions for teeritory names.
//------------------------------------------------
string GetTerritoryGuildName (int iTerritory);
void SetTerritoryName (int iTerritory, string sName);

//------------------------------------------------
//GET & SET functions for max territory number.
//------------------------------------------------
int GetMaxTerritoryNumber();
void SetMaxTerritoryNumber (int iMaxTerritory);

//------------------------------------------------
//GET & SET functions for territory count.
//------------------------------------------------
int GetGuildTerritoryCount (int iGuild);
void SetGuildTerritoryCount (int iGuild, int iCount);

//------------------------------------------------
//GET & SET functions for storage creatures.
//------------------------------------------------
object GetTerritoryStorageCreature (int iTerritory);
void SetTerritoryStorageCreature (object oCreature, int iTerritory);

//**************************** PGS TERRITORY INFO ****************************\\

//  //********************************************************************\\  \\
//  ||************************ BEGIN PGS FUNCTIONS ***********************||  \\
//  \\********************************************************************//  \\
int GetPGSDoorTerritory (object oDoor)
{
    string sTag = GetTag (oDoor);

    //--------------------------------------------
    //Return the territory number for the door.
    //--------------------------------------------
    //Example: Territory_Door_1
    return StringToInt (GetStringRight (sTag, (GetStringLength (sTag) - 15)));
}
int GetPGSFlagTerritory (object oFlag)
{
    string sTag = GetTag (oFlag);
    //--------------------------------------------
    //Return the territory number for the flag.
    //--------------------------------------------
    //Example: Territory_Flag_1
    return StringToInt (GetStringRight (sTag, (GetStringLength (sTag) - 15)));
}
int GetPGSMarkerTerritory (object oMarker)
{
    string sTag = GetTag (oMarker);

    //--------------------------------------------
    //Return the territory number for the marker.
    //--------------------------------------------
    //Example: Territory_Marker_1
    return StringToInt (GetStringRight (sTag, (GetStringLength (sTag) - 17)));
}
int GetPGSStorageTerritory (object oChest)
{
    string sTag = GetTag (oChest);

    //--------------------------------------------
    //Return the territory number for the marker.
    //--------------------------------------------
    //Example: Territory_Chest_1
    return StringToInt (GetStringRight (sTag, (GetStringLength (sTag) - 16)));
}

int GetTerritoryGuildNumber (int iTerritory)
{
    return GetCampaignInt (PGS_TERRITORY_DATABASE_FILENAME, "Territory" +
        IntToString (iTerritory) + "_Guild_Number");
}
void SetTerritoryGuildNumber (int iTerritory, int iGuild)
{
    SetCampaignInt (PGS_TERRITORY_DATABASE_FILENAME, "Territory" + IntToString
        (iTerritory) + "_Guild_Number", iGuild);
}

string GetTerritoryGuildName (int iTerritory)
{
    return GetCampaignString (PGS_TERRITORY_DATABASE_FILENAME, "Territory" +
        IntToString (iTerritory) + "_Name");
}
void SetTerritoryName (int iTerritory, string sName)
{
    SetCampaignString (PGS_TERRITORY_DATABASE_FILENAME, "Territory" + IntToString
        (iTerritory) + "_Name", sName);
}

int GetMaxTerritoryNumber()
{
    return GetCampaignInt (PGS_TERRITORY_DATABASE_FILENAME, "Max_Territory_Number");
}
void SetMaxTerritoryNumber (int iMaxTerritory)
{
    SetCampaignInt (PGS_TERRITORY_DATABASE_FILENAME, "Max_Territory_Number",
        iMaxTerritory);
}

int GetGuildTerritoryCount (int iGuild)
{
    return GetCampaignInt (PGS_MODULE_DATABASE_FILENAME, "Module_Guild" +
        IntToString (iGuild) + "_Territory_Count");
}
void SetGuildTerritoryCount (int iGuild, int iCount)
{
    SetCampaignInt (PGS_MODULE_DATABASE_FILENAME, "Module_Guild" + IntToString
        (iGuild) + "_Territory_Count", iCount);
}

object GetTerritoryStorageCreature (int iTerritory)
{
    return RetrieveCampaignObject (PGS_TERRITORY_DATABASE_FILENAME, "Territory" +
        IntToString (iTerritory) + "_Storage_Creature", GetLocation (OBJECT_SELF));
}
void SetTerritoryStorageCreature (object oCreature, int iTerritory)
{
    StoreCampaignObject (PGS_TERRITORY_DATABASE_FILENAME, "Territory" +
        IntToString (iTerritory) + "_Storage_Creature", oCreature);
}
//  //********************************************************************\\  \\
//  ||************************* END PGS FUNCTIONS ************************||  \\
//  \\********************************************************************//  \\
