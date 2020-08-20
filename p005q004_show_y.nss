int StartingConditional()
{
	int nShow = GetLocalInt(GetPCSpeaker(), "p005state") >= 3;
	return nShow;
}
