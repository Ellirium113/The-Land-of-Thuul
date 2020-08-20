int StartingConditional()
{
	int nShow = GetLocalInt(GetPCSpeaker(), "p007state_NW_KOBOLD004") >= 1;
	return nShow;
}
