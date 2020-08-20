int StartingConditional()
{
	int nShow = OBJECT_INVALID != GetItemPossessedBy(GetPCSpeaker(), "WandofOrcus");
	return nShow;
}
