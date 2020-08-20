//::///////////////////////////////////////////////
//:: Name: pgs_gnome_rem
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Remove the vault gnome from the module.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oGnome = GetLocalObject (OBJECT_SELF, "Temp_Vault_Gnome");

    //--------------------------------------------
    //Remove variable(s) no longer needed.
    //--------------------------------------------
    DeleteLocalObject (OBJECT_SELF, "Temp_Vault_Gnome");

    //--------------------------------------------
    //Apply VFX, then destroy vault gnome.
    //--------------------------------------------
    ApplyEffectAtLocation (DURATION_TYPE_INSTANT, EffectVisualEffect
        (VFX_FNF_SUMMON_MONSTER_2), GetLocation (oGnome));
    DestroyObject (oGnome);
}
