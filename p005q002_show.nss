int StartingConditional()
{
	int nShow = GetLocalInt(GetPCSpeaker(), "p005state_bjorg") >= 1;
	return nShow;
}
