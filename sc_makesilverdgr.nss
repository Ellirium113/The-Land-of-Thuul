//NWSCRIPT
//MASTERM
//1-30-03
//Create Robe Items Coversation Node "Silver Dagger"

void main()
{
object oPC=GetPCSpeaker();
int iRhand=(INVENTORY_SLOT_RIGHTHAND);
object oItem=GetItemInSlot(iRhand,oPC);

CreateItemOnObject("silverdagger",oPC,1);
AssignCommand(oPC, ActionUnequipItem(oItem));
AssignCommand(oPC, ActionEquipItem((GetItemPossessedBy(oPC, "SilverDagger")), iRhand));
}

