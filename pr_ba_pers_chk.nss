//::///////////////////////////////////////////////
//:: FileName pr_ba_pers_chk
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 26/02/2005 12:13:13
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

	// Perform skill checks
	if(!(AutoDC(DC_MEDIUM, SKILL_PERSUADE, GetPCSpeaker())))
		return FALSE;

	return TRUE;
}
