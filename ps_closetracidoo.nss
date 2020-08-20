void main()
{
    object oDoor = GetObjectByTag("tracidoor");
    ActionCloseDoor(oDoor);
    SetLocked(oDoor, ACTION_LOCK);
}
