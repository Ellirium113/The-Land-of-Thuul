//::///////////////////////////////////////////////
//:: FileName druidquest3
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 6/5/2009 3:57:56 PM
//:://////////////////////////////////////////////
int StartingConditional()
{

	// Inspect local variables
	if(!(GetLocalInt(GetPCSpeaker(), "druidquest") == 100))
		return FALSE;

	return TRUE;
}
