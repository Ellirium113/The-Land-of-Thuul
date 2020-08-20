int iDebugPoint = 0;
void main()
{
    object oPC = GetFirstPC();
    iDebugPoint ++;
    object oDebugWaypoint = GetWaypointByTag("DEBUG_" + IntToString(iDebugPoint));
    if(GetIsObjectValid(oDebugWaypoint))
    {
        AssignCommand(oPC, JumpToObject(oDebugWaypoint));
    } else {
        iDebugPoint = 1;
        oDebugWaypoint = GetWaypointByTag("DEBUG_" + IntToString(iDebugPoint));
        if(GetIsObjectValid(oDebugWaypoint))
        {
            AssignCommand(oPC, JumpToObject(oDebugWaypoint));
        }
    }
}