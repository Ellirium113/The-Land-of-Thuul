void TrashObject(object oItem)
{
    if(GetHasInventory(oItem) == FALSE)
    {
    DestroyObject(oItem);
    }
    else
    {
    object oItem2 = GetFirstItemInInventory(oItem);

    while(GetIsObjectValid(oItem2))
    {
    TrashObject(oItem2);
    oItem2 = GetNextItemInInventory(oItem);
    }
    DestroyObject(oItem);
    }
}
void main()
{
    object oItem = GetFirstObjectInArea();
    while(GetIsObjectValid(oItem))
    {
    int oItemtype = GetObjectType(oItem);
    if (oItemtype == OBJECT_TYPE_PLACEABLE)
    {
    string oItemtag = GetTag(oItem);
    if (oItemtag == "BodyBag")
    {
    TrashObject(oItem);
    }
    }
    oItem = GetNextObjectInArea();
    }
}
