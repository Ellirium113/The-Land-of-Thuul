//::///////////////////////////////////////////////
//:: Name: pgs_mssngr_rem
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script will remove the messenger bird
    created by the PC using a "fly away" effect.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Perform "fly away" effect on the messenger.
    //--------------------------------------------
    ApplyEffectToObject (DURATION_TYPE_INSTANT, EffectDisappear(),
        GetLocalObject (oPlayer, "Temp_Messenger_Creature"));

    //--------------------------------------------
    //Remove any variables no longer needed.
    //--------------------------------------------
    DeleteLocalObject (oPlayer, "Temp_Messenger_Creature");
}
