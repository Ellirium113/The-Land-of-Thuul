#include "nw_i0_plotwizard"
void main()
{
	AddJournalQuestEntry("p003", 2, GetLastKiller(), TRUE);
	PWSetMinLocalIntParty(GetLastKiller(), "p003state", 2);
	PWGiveExperienceParty(GetLastKiller(), 400);
}
