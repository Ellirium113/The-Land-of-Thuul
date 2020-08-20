//::///////////////////////////////////////////////
//:: Name
//:: FileName
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
Find the "nearest" pack in the ox's inventory and give it to the owner.
*/
//:://////////////////////////////////////////////
//:: Created By: Rogers Pessin (Tigsen)
//:: Created On: August 4, 2002
//:://////////////////////////////////////////////

void main()
{
    int iNearestPack = GetLocalInt(OBJECT_SELF,"RP_PACK_NEAREST");
    object oPackToGive = GetLocalObject(OBJECT_SELF,"RP_PACK_NUM_"+IntToString(iNearestPack));

    ActionGiveItem(oPackToGive,GetPCSpeaker());
    // Remember which pack we've given to the owner.
    SetLocalObject(OBJECT_SELF,"RP_PACK_OFF",oPackToGive);
}
