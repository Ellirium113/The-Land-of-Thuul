//::///////////////////////////////////////////////
//:: FileName sc_hasmightsword
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/29/03 10:54:45 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Make sure the PC speaker has these items in their inventory
	if(!CheckPartyForItem(GetPCSpeaker(), "MightSword"))
		return FALSE;

	return TRUE;
}
