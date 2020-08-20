//NWScript
//MasterM
//1-29-03
//Rod of Might - Equip Might Axe Conversation Node

void main()
{
object oPC=GetPCSpeaker();
object oRod=GetItemPossessedBy(oPC,"RodOfMight");
object oMace=GetObjectByTag("MightAxe");
int iRhand=(INVENTORY_SLOT_RIGHTHAND);
object oItem=GetItemInSlot(iRhand,oPC);

DestroyObject(oRod,1.0);
CreateItemOnObject("mightaxe",oPC,1);
AssignCommand(oPC, ActionUnequipItem(oItem));
AssignCommand(oPC, ActionEquipItem((GetItemPossessedBy(oPC, "MightAxe")), iRhand));
}

