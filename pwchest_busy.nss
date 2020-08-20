void main()
{
    object oContainer = OBJECT_SELF;
    object oUser = GetLastUsedBy();
    if ( (GetLocalString(oContainer, "USER") != GetPCPlayerName(oUser)) &&
         (GetLocalInt(oContainer, "INUSE") == TRUE) )
    {
        FloatingTextStringOnCreature("Come back when the current player is done.", oUser, FALSE);
    }
    else
    {
        FloatingTextStringOnCreature("Walk away to close and save.", oUser, FALSE);
    }
}
