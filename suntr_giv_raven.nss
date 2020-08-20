void main()
{
    object oPC = GetPCSpeaker();
    TakeGoldFromCreature(500, oPC, TRUE);
    object oTick=CreateItemOnObject("tick_to_raven", oPC);
}
