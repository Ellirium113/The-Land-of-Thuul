void main()
{
    int nEvent = GetUserDefinedEventNumber();

    switch (nEvent)
    {
        case 400:
            ActionMoveToObject(GetWaypointByTag("WP_OrcusLeave"));
            ActionDoCommand(DestroyObject(OBJECT_SELF));
            SetCommandable(FALSE);

        break;
    }
}
