//::///////////////////////////////////////////////
//:: FileName kq7
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/23/2009 2:43:26 PM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Make sure the PC speaker has these items in their inventory
	if(!HasItem(GetPCSpeaker(), "golanjournal"))
		return FALSE;

	return TRUE;
}
