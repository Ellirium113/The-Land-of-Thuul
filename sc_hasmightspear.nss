//::///////////////////////////////////////////////
//:: FileName sc_hasmightspear
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/29/03 10:55:30 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Make sure the PC speaker has these items in their inventory
	if(!CheckPartyForItem(GetPCSpeaker(), "MightSpear"))
		return FALSE;

	return TRUE;
}
