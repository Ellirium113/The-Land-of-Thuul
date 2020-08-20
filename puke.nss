    void main()
{
    effect ePuke = EffectVisualEffect(VFX_COM_CHUNK_GREEN_SMALL);
    object oPuker= GetNearestObjectByTag("fishcrate");
    string sPukeTalk = "BBBLLLLAAAARRRRGGGGHHHHH!!!!";
    string sPukeApology = "The stench of the decaying fish instantly overcomes you?";


        ClearAllActions();
        AssignCommand(OBJECT_SELF, ActionPlayAnimation(ANIMATION_LOOPING_MEDITATE));
        AssignCommand(OBJECT_SELF, ActionSpeakString(sPukeTalk));
        DelayCommand(2.0,ApplyEffectToObject(DURATION_TYPE_TEMPORARY, ePuke, OBJECT_SELF, 1.0));
        DelayCommand(5.0, ActionSpeakString(sPukeApology));

}
