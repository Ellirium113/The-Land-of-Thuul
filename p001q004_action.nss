#include "nw_i0_plotwizard"
void main()
{
	object oItemToTake = GetItemPossessedBy(GetPCSpeaker(), "WandofOrcus");
	DestroyObject(oItemToTake);
	GiveGoldToCreature(GetPCSpeaker(), 65000);
	PWSetMinLocalIntPartyPCSpeaker("p001state_Kinggolan", 4);
	PWSetMinLocalIntPartyPCSpeaker("p001state", 4);
	PWGiveExperienceParty(GetPCSpeaker(), 5000);
}
