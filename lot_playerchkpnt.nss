void main()
{
    object oPC = GetEnteringObject();
    int iCheckpointId = GetLocalInt(OBJECT_SELF, "CHECKPOINT_ID");
    if(GetIsPC(oPC) && GetLocalInt(oPC, "NW_JOURNAL_ENTRYpc_respawn_checkpoint") != iCheckpointId){
        AddJournalQuestEntry("pc_respawn_checkpoint", iCheckpointId, oPC, FALSE, FALSE, TRUE);
    }
}
