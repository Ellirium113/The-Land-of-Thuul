//::///////////////////////////////////////////////
//:: FileName dlg_plott_01
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/23/2009 12:28:38 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

    // Inspect local variables
    if(!(GetLocalInt(GetPCSpeaker(), "iplottkingsquest") == 300))
        return FALSE;

    return TRUE;
}
