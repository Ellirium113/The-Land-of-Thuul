/*This script creates seperate DB files for each player that uses the chest
the name of the DB file Tag of the object calling the script and name of player's
account.
*/
void main()
{
    object oContainer = OBJECT_SELF;
    object oUser = GetLastOpenedBy();
    string sDB = GetTag(oContainer) + "_" + GetPCPlayerName(oUser);
    DestroyCampaignDatabase(sDB);
    int nIdx = 0;
    object oItem = GetFirstItemInInventory(oContainer);
    while (GetIsObjectValid(oItem)) {
        if (GetBaseItemType(oItem) != BASE_ITEM_LARGEBOX)
        {
            StoreCampaignObject(sDB, "ST_ITEM_" + IntToString(nIdx), oItem);
        }
        DestroyObject(oItem);
        nIdx++;
        oItem = GetNextItemInInventory(oContainer);
    }
    if (nIdx > 0) {
        SetCampaignInt(sDB, "ST_ItemCount", nIdx);
    }
    SetLocked(OBJECT_SELF, FALSE);
//following code used to prevent server from locking DB files
//needed when multiple servers share DB files
    sDB = "CLEAN_DB_" + GetTag(GetModule());
    SetCampaignString(sDB, "CLEAN_DB", "CLEAN_DB");
    DestroyCampaignDatabase(sDB);
}
