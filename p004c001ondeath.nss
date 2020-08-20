#include "nw_i0_plotwizard"
void main()
{
	AddJournalQuestEntry("p004", 2, GetLastKiller(), TRUE);
	PWSetMinLocalIntParty(GetLastKiller(), "p004state", 2);
	PWGiveExperienceParty(GetLastKiller(), 500);
}
