#include "nw_i0_plotwizard"
void main()
{
	AddJournalQuestEntry("p000", 3, GetLastKiller(), TRUE);
	PWSetMinLocalIntParty(GetLastKiller(), "p000state", 3);
	PWGiveExperienceParty(GetLastKiller(), 1500);
}
