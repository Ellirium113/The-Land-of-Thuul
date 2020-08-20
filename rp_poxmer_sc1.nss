//::///////////////////////////////////////////////
//:: Name
//:: FileName
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*

*/
//:://////////////////////////////////////////////
//:: Created By: Rogers Pessin (Tigsen)
//:: Created On: August 4, 2002
//:://////////////////////////////////////////////

#include "rp_poxmer_inc"

int StartingConditional()
{
    // If the speaker is "cute" (has a charisma >12) and is female, the
    // pack ox merchant will give her a discount... the flirt :)

    object oSpeaker = GetPCSpeaker();
    if((GetAbilityScore(oSpeaker, ABILITY_CHARISMA) > 12) &&
    (GetGender(oSpeaker)==GENDER_FEMALE))
    {
        SetCustomToken(5001,IntToString(iDiscountOxPrice));
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
