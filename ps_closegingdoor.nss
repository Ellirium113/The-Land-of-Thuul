void main()
{
    object oDoor = GetObjectByTag("gingerdoor");
    ActionCloseDoor(oDoor);
    SetLocked(oDoor, ACTION_LOCK);
}
