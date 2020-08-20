//NWSCRIPT
//MASTERM
//1-30-03
//Create Robe Items Coversation Node "(10) Cut Amythest Gems"

void main()
{
object oPC=GetPCSpeaker();

CreateItemOnObject("CutAmythest",oPC,10);
}

