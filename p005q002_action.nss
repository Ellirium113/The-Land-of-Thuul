#include "nw_i0_plotwizard"
void main()
{
	CreateItemOnObject("KeytotheSewers", GetPCSpeaker());
	PWSetMinLocalIntPartyPCSpeaker("p005state_bjorg", 2);
	PWSetMinLocalIntPartyPCSpeaker("p005state", 2);
	PWGiveExperienceParty(GetPCSpeaker(), 50);
}
