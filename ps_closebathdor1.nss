void main()
{
    object oDoor = GetObjectByTag("bathroomdoor1");
    ActionCloseDoor(oDoor);
    SetLocked(oDoor, ACTION_LOCK);
}
