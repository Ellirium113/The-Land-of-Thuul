//NWSCRIPT
//MASTERM
//1-30-03
//Create Robe Items Coversation Node "100 gp"

void main()
{
object oPC=GetPCSpeaker();

GiveGoldToCreature(oPC, 100);
}

