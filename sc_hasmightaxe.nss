//::///////////////////////////////////////////////
//:: FileName sc_hasmightaxe
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 1/29/03 10:55:07 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Make sure the PC speaker has these items in their inventory
	if(!CheckPartyForItem(GetPCSpeaker(), "MightAxe"))
		return FALSE;

	return TRUE;
}
