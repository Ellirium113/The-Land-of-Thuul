#include "nw_i0_plotwizard"
int StartingConditional()
{
	int nShow = GetLocalInt(GetPCSpeaker(), "p005state_bjorg") >= 4;
	if (nShow)
	{
		PWSetMinLocalIntPartyPCSpeaker("p005state_bjorg", 5);
		PWSetMinLocalIntPartyPCSpeaker("p005state", 5);
	}
	return nShow;
}
