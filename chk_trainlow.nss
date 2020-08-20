// Too low level for the trainer?
int StartingConditional()
{
    object oPC = GetPCSpeaker();
    if (GetHitDice(oPC) < GetLocalInt(OBJECT_SELF, "min"))
      {
       return TRUE;
      }
    return FALSE;
}
