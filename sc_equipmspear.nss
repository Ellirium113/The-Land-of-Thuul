//NWScript
//MasterM
//1-29-03
//Rod of Might - Equip Might Spear Conversation Node

void main()
{
object oPC=GetPCSpeaker();
object oRod=GetItemPossessedBy(oPC,"RodOfMight");
object oMace=GetObjectByTag("MightSpear");
int iRhand=(INVENTORY_SLOT_RIGHTHAND);
object oItem=GetItemInSlot(iRhand,oPC);

DestroyObject(oRod,1.0);
CreateItemOnObject("mightspear",oPC,1);
AssignCommand(oPC, ActionUnequipItem(oItem));
AssignCommand(oPC, ActionEquipItem((GetItemPossessedBy(oPC, "MightSpear")), iRhand));
}

