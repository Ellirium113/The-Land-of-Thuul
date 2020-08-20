void main()
{
    object oDoor = GetObjectByTag("bathroomdoor2");
    ActionCloseDoor(oDoor);
    SetLocked(oDoor, ACTION_LOCK);

}
