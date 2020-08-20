//::///////////////////////////////////////////////
//:: Name: pgs_mssngr_od
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    OnDamaged event for PGS Messengers.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oPlayer = GetLocalObject (OBJECT_SELF, "Temp_Player");

    //--------------------------------------------
    //Delete variable(s) no longer needed.
    //--------------------------------------------
    DeleteLocalObject (oPlayer, "Temp_Messenger_Creature");

    //--------------------------------------------
    //Inform player, and remove messenger creature.
    //--------------------------------------------
    ApplyEffectToObject (DURATION_TYPE_INSTANT, EffectDisappear(), OBJECT_SELF);
    SendMessageToPC (oPlayer, "You're messenger creature has been frightened, " +
        " and has left your side.");
}
