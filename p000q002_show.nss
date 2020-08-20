#include "nw_i0_plotwizard"
int StartingConditional()
{
	int nShow = GetLocalInt(GetPCSpeaker(), "p000state_Dwarf2") >= 1;
	if (nShow)
	{
		PWSetMinLocalIntPartyPCSpeaker("p000state_Dwarf2", 2);
		PWSetMinLocalIntPartyPCSpeaker("p000state", 2);
	}
	return nShow;
}
