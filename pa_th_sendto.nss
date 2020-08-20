void main()
{
object oPlayer = GetPCSpeaker();
AssignCommand(oPlayer,ActionJumpToLocation(GetLocation(GetWaypointByTag("boat_dest"))));
}
