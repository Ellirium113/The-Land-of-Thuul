void main()
{

    //Remove some gold from the player
    TakeGoldFromCreature(1000, GetPCSpeaker(), FALSE);

//  AdjustAlignment(GetPCSpeaker(), ALIGNMENT_NEUTRAL, 100);
  AdjustAlignment(GetPCSpeaker(), ALIGNMENT_LAWFUL, 100);
//  AdjustAlignment(GetPCSpeaker(), ALIGNMENT_CHAOTIC, 100);
//  AdjustAlignment(GetPCSpeaker(), ALIGNMENT_GOOD, 100);
  AdjustAlignment(GetPCSpeaker(), ALIGNMENT_EVIL, 100);
//  AdjustAlignment(GetPCSpeaker(), ALIGNMENT_ALL, 100);
}
