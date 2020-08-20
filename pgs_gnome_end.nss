//::///////////////////////////////////////////////
//:: Name: pgs_gnome_end
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Disable listening for the Vault Gnome, and
    remove any variables that were created.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oPlayer = GetPCSpeaker();
    object oGnome = GetLocalObject (oPlayer, "Temp_Vault_Gnome");

    //--------------------------------------------
    //Disable listening for the vault gnome.
    //--------------------------------------------
    SetListening (OBJECT_SELF, FALSE);

    //--------------------------------------------
    //Remove unnecessary variables from the gnome.
    //--------------------------------------------
    DeleteLocalObject (OBJECT_SELF, "Temp_Player");

    //--------------------------------------------
    //Remove player created vault gnome.
    //--------------------------------------------
    ApplyEffectAtLocation (DURATION_TYPE_INSTANT, EffectVisualEffect
        (VFX_FNF_SUMMON_MONSTER_2), GetLocation (oGnome));
    DestroyObject (oGnome);
    DeleteLocalInt (oPlayer, "Remove_Gnome");
}
