void main()
{
    object oPC = GetEnteringObject();
    if (GetIsPC(oPC) && ! GetIsDM(oPC))
    {
        AddJournalQuestEntry("pc_respawn_checkpoint", 1, oPC, FALSE, FALSE, FALSE);
    }
}
