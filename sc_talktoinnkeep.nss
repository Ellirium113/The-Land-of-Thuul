//:: FileName sc_talktoinnkeep
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 10/7/2003 1:48:48 AM
//:://////////////////////////////////////////////
int StartingConditional()
{

 // Inspect local variables
 if(!(GetLocalInt(GetPCSpeaker(), "quest") == 10))
  return FALSE;

 return TRUE;
}

