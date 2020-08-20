void main()
{
    object oDest=GetWaypointByTag("WP_suntr_ps");
    object oPC=GetPCSpeaker();
    location lDest=GetLocation(oDest);
    AssignCommand(oPC, JumpToLocation(lDest));
}
