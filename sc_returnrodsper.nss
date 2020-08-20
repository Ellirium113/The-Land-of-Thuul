//NWScript
//MasterM
//1-29-03
//Rod of Might - Return Rod of Might Conversation Node

void main()
{
object oPC=GetPCSpeaker();
object oRod=GetItemPossessedBy(oPC,"MightSpear");
object oMace=GetObjectByTag("RodOfMight");
int iRhand=(INVENTORY_SLOT_RIGHTHAND);
object oItem=GetItemInSlot(iRhand,oPC);

AssignCommand(oPC, ActionUnequipItem(oItem));
DestroyObject(oRod,1.0);
CreateItemOnObject("rodofmight",oPC,1);
AssignCommand(oPC, ActionEquipItem((GetItemPossessedBy(oPC, "RodOfMight")), iRhand));

}

