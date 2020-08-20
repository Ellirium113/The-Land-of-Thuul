void main()
{
    SetLocked(OBJECT_SELF, TRUE);
    object oContainer = OBJECT_SELF;
    object oUser = GetLastOpenedBy();
    string sDB = GetTag(oContainer) + "_" + GetPCPlayerName(oUser);
    string sTag = "";
    int nIdx = 0;
    int nMax = GetCampaignInt(sDB, "ST_ItemCount");
    if (nMax > 0)
    {
        for (nIdx = 0; nIdx < nMax;  nIdx++)
        {
            sTag = "ST_ITEM_" + IntToString(nIdx);
            RetrieveCampaignObject(sDB, sTag, GetLocation(oContainer), oContainer);
            DeleteCampaignVariable(sDB, sTag);
        }
    }
}
