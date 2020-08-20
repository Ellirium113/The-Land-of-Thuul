#include "nw_i0_plotwizard"
void main()
{
	AddJournalQuestEntry("p005", 3, GetLastKiller(), TRUE);
	PWSetMinLocalIntParty(GetLastKiller(), "p005state", 3);
	PWGiveExperienceParty(GetLastKiller(), 200);
}
