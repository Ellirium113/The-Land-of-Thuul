//::///////////////////////////////////////////////
//:: Name: pgs_gnome_init
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Remove any Vault Gnomes created by the player.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Remove player-created vault gnomes.
    //--------------------------------------------
    if (GetLocalInt (oPlayer, "Remove_Gnome"))
    {
        object oGnome = GetLocalObject (oPlayer, "Temp_Vault_Gnome");

        ApplyEffectAtLocation (DURATION_TYPE_INSTANT, EffectVisualEffect
            (VFX_FNF_SUMMON_MONSTER_2), GetLocation (oGnome));
        DestroyObject (oGnome);
        DeleteLocalInt (oPlayer, "Remove_Gnome");
    }
}
