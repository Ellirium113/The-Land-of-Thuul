#include "nw_i0_plotwizard"
int StartingConditional()
{
	int nShow = GetLocalInt(GetPCSpeaker(), "p007state") >= 3;
	if (nShow)
	{
		PWSetMinLocalIntPartyPCSpeaker("p007state_NW_KOBOLD004", 4);
		PWSetMinLocalIntPartyPCSpeaker("p007state", 4);
	}
	return nShow;
}
