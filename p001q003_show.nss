int StartingConditional()
{
	int nShow = GetLocalInt(GetPCSpeaker(), "p001state_Kinggolan") >= 1;
	return nShow;
}
