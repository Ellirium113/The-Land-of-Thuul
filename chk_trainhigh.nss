// Too high level for the trainer?
int StartingConditional()
{
    object oPC = GetPCSpeaker();
    if (GetHitDice(oPC) > GetLocalInt(OBJECT_SELF, "max"))
      {
       return TRUE;
      }
    return FALSE;
}
