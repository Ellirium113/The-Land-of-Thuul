string GetSlotByName(int iSlot)
{
    if (iSlot == INVENTORY_SLOT_CHEST) return "Armor";
    if (iSlot == INVENTORY_SLOT_HEAD) return "Helmet";
    return IntToString(iSlot);
}

void main()
{
    int i;
    object oItem;
    for (i=0; i<NUM_INVENTORY_SLOTS; i++)
    {
        oItem = GetItemInSlot(i);
        if (GetIsObjectValid(oItem))
        {
            SpeakString(GetSlotByName(i)+": "+GetName(oItem));
        }
    }
}
