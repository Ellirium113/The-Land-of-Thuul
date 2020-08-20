//NWSCRIPT
//MASTERM
//1-30-03
//Create Robe Items Coversation Node "Torch"

void main()
{
 object oPC=GetPCSpeaker();
 int iLhand=(INVENTORY_SLOT_LEFTHAND);
 object oItem=GetItemInSlot(iLhand,oPC);

CreateItemOnObject("robetorch",oPC,1);
AssignCommand(oPC, ActionUnequipItem(oItem));
AssignCommand(oPC, ActionEquipItem((GetItemPossessedBy(oPC, "RobeTorch")), iLhand));
}

