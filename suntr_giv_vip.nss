void main()
{
    object oPC = GetPCSpeaker();
    TakeGoldFromCreature(50000, oPC, TRUE);
    object oCard=CreateItemOnObject("tick_vip_card", oPC);
}
