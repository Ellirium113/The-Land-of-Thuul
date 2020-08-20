//::///////////////////////////////////////////////
//:: Name: pgs_chest_close
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    OnClose event for guild storage chests.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_terr"

void main()
{
    object oStorage = GetLocalObject (OBJECT_SELF, "Temp_Storage_Creature");
    object oChest = GetLocalObject (OBJECT_SELF, "Temp_Storage_Chest");

    //--------------------------------------------
    //Save the storage creature for persistency.
    //--------------------------------------------
    SetTerritoryStorageCreature (oStorage, GetPGSStorageTerritory (oChest));

    //--------------------------------------------
    //Destroy storage creature & unique placeable.
    //--------------------------------------------
    DeleteLocalInt (oChest, "Currently_In_Use");
    DeleteLocalInt (oChest, "Item_Count");
    DestroyObject (oStorage);
    DestroyObject (OBJECT_SELF);
}
