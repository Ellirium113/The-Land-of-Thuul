//NWSCRIPT
//MASTERM
//RAM DESTROYS NEAREST DOOR ONUSED EVENT
//1-22-03

void main()
{
object oRam=GetObjectByTag("BatteringRamT");
object oDoor=GetNearestObject(OBJECT_TYPE_DOOR, oRam, 1);

if(oDoor==GetNearestObject(OBJECT_TYPE_DOOR, oRam, 1))
{
    ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectDeath(TRUE,TRUE), oDoor, 0.0);
    return;
}
AssignCommand(oRam, ActionSpeakString("There is no door in range", TALKVOLUME_TALK));
}

