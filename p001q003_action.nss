#include "nw_i0_plotwizard"
void main()
{
    object oItemToTake = GetItemPossessedBy(GetPCSpeaker(), "golanjournal");
    DestroyObject(oItemToTake);
    GetItemPossessedBy(GetPCSpeaker(), "WandofOrcus");
	   DestroyObject(oItemToTake);
    GiveGoldToCreature(GetPCSpeaker(), 50000);
    PWSetMinLocalIntPartyPCSpeaker("p001state_Kinggolan", 3);
    PWSetMinLocalIntPartyPCSpeaker("p001state", 3);
	   PWGiveExperienceParty(GetPCSpeaker(), 5000);
}
