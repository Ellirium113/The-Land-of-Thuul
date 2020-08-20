void main()
{
    object oDest=GetWaypointByTag("WP_suntr_raven");
    object oPC = GetPCSpeaker();
    location lDest=GetLocation(oDest);
    AssignCommand(oPC, JumpToLocation(lDest));
}
