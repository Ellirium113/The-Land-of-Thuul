//::///////////////////////////////////////////////
//:: Name: pgs_default_vg
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Default template for spawning the Vault Gnome.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oPlayer = GetPCSpeaker();
    object oGnome = CreateObject (OBJECT_TYPE_CREATURE, "vaultgnome",
        GetLocation (oPlayer));

    //--------------------------------------------
    //Face each other, and save objects for later.
    //--------------------------------------------
    AssignCommand (oPlayer, SetFacingPoint (GetPosition (oGnome)));
    AssignCommand (oGnome, SetFacingPoint (GetPosition (oPlayer)));
    SetLocalObject (oPlayer, "Temp_Vault_Gnome", oGnome);
    SetLocalObject (oGnome, "Temp_Player", oPlayer);

    //--------------------------------------------
    //Set the Vault Gnome to listen for info.
    //--------------------------------------------
    SetListening (oGnome, TRUE);
    SetListenPattern (oGnome, "*n", 2001);
}
