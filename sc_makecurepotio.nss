
//NWSCRIPT
//MASTERM
//1-30-03
//Create Robe Items Coversation Node "Potion of Cure Serious"

void main()
{
object oPC=GetPCSpeaker();

CreateItemOnObject("curepotion",oPC,1);

}


