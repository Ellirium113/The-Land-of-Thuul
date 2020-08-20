int StartingConditional()
{
	int nShow = OBJECT_INVALID != GetItemPossessedBy(GetPCSpeaker(), "SpiderEye");
	return nShow;
}
