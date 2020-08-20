void main()
{
    object oPC = GetClickingObject();
    //check for gold card
    //SendMessageToPC(oPC, "Checking card");
    object oCard = GetItemPossessedBy(oPC, "tick_vip_card");
    if (oCard!=OBJECT_INVALID)
    {
        BeginConversation("tick_vip_card", oPC);
        return;
    }

    //SendMessageToPC(oPC, "Checking tickets");
    //check for ticket to Raven's Call
    object oTick = GetItemPossessedBy(oPC, "tick_to_raven");
    if (oTick!=OBJECT_INVALID)
    {
        location lDest = GetLocation(GetWaypointByTag("WP_suntr_raven"));
        AssignCommand(oPC, JumpToLocation(lDest));
        DestroyObject(oTick);
        return;
    }
}
