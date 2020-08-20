#include "nw_i0_plotwizard"
void main()
{
	GiveGoldToCreature(GetPCSpeaker(), 1500);
	PWSetMinLocalIntPartyPCSpeaker("p005state_bjorg", 4);
	PWSetMinLocalIntPartyPCSpeaker("p005state", 4);
	PWGiveExperienceParty(GetPCSpeaker(), 500);
}
