//Connected to the Bailiff's heartbeat event
void main()
{
int cell = GetCampaignInt("prison","cell");
if (cell == 1)
{
SpeakString("Cell is 1");
object oOffice = GetObjectByTag("officedoor");
object oPrison = GetObjectByTag("prisondoor");
object oBailiff = OBJECT_SELF;
//cell is occupied so trigger the release sequence
ActionUnlockObject(oOffice);
ActionOpenDoor(oOffice);
location ldest = GetLocation(GetWaypointByTag("pr_ba_dest"));
//location ldest = GetLocation(oPrison);
ActionMoveToLocation(ldest);
SetCampaignInt("prison","cell",0);
object oPlayer = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR,PLAYER_CHAR_IS_PC);
SpeakString("Player Name is "+GetName(oPlayer));
}
}
