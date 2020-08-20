//NWSCRIPT
//MASTERM
//1-30-03
//Create Robe Items Coversation Node "Random Scroll"

#include "nw_o2_coninclude"

void main()
{
object oPC=GetPCSpeaker();

CreateArcaneScroll(oPC, oPC, 1);
}

