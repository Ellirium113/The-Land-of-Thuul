#include "nw_i0_plotwizard"
int StartingConditional()
{
	int nShow = GetLocalInt(GetPCSpeaker(), "p001state_Kinggolan") >= 3;
	if (nShow)
	{
		PWSetMinLocalIntPartyPCSpeaker("p001state_Kinggolan", 5);
		PWSetMinLocalIntPartyPCSpeaker("p001state", 5);
		PWGiveExperienceParty(GetPCSpeaker(), 2500);
		AddJournalQuestEntry("p001", 5, GetPCSpeaker(), TRUE, FALSE, FALSE);
	}
	return nShow;
}
