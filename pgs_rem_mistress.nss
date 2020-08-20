//::///////////////////////////////////////////////
//:: Name: pgs_rem_mistress
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script will remove the guild mistress.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    //------------------------------------------------
    //Have Guild Mistress appear to fly away.
    //------------------------------------------------
    ApplyEffectToObject (DURATION_TYPE_INSTANT, EffectDisappear(),
        GetLocalObject (GetPCSpeaker(), "Temp_Guild_Mistress"));
}
