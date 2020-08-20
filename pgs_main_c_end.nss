//::///////////////////////////////////////////////
//:: Name: pgs_main_c_end
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script is run when the main Player Guild
    System (PGS) conversation is ended.  It will
    clean all variables no longer used.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    int iCount = 1;
    object oPlayer = GetPCSpeaker();
    object oGnome = GetLocalObject (oPlayer, "Temp_Vault_Gnome");

    //--------------------------------------------
    //Delete list-related variables.
    //--------------------------------------------
    for (; iCount <= 8; iCount++)
    {
        DeleteLocalInt (oPlayer, "Temp_List_Position" + IntToString (iCount));
        DeleteLocalString (oPlayer, "Temp_List_Member" + IntToString (iCount));
    }

    DeleteLocalObject (oPlayer, "Object_Target");
    DeleteLocalInt (oPlayer, "Temp_Guild_List_Number");
    DeleteLocalInt (oPlayer, "Next_Set_Is_Available");
    DeleteLocalInt (oPlayer, "Previous_Set_Is_Available");
    DeleteLocalInt (oPlayer, "Previous_List_Position");
    DeleteLocalInt (oPlayer, "Target_Self");
    DeleteLocalInt (oPlayer, "Same_Guild");
    DeleteLocalInt (oPlayer, "New_Guild_Faction");
    DeleteLocalInt (oPlayer, "Message_Number");
    DeleteLocalInt (oPlayer, "Reply_Number");
    DeleteLocalInt (oPlayer, "Guild_Data_Error");
    DeleteLocalInt (oPlayer, "List_Position");
    DeleteLocalInt (oPlayer, "List_Built");
    DeleteLocalInt (oPlayer, "Do_What_With_Info");
    DeleteLocalInt (oPlayer, "Is_In_Conversation");
    DeleteLocalInt (oPlayer, "Token_Position");
    DeleteLocalInt (oPlayer, "Is_DM");
    DeleteLocalInt (oPlayer, "Target_Is_Territory");
    DeleteLocalString (oPlayer, "Temp_Guild_Name");
    DeleteLocalString (oPlayer, "Temp_Guild_Description");
    DeleteLocalString (oPlayer, "Temp_Guild_Privacy");
    DeleteLocalString (oPlayer, "Temp_Message_Title");
    DeleteLocalString (oPlayer, "Temp_Message_Post");
    DeleteLocalString (oPlayer, "Temp_Reply_Title");
    DeleteLocalString (oPlayer, "Temp_Reply_Post");

    //--------------------------------------------
    //Remove any remaining NPC's created by the PC.
    //--------------------------------------------
    ApplyEffectToObject (DURATION_TYPE_INSTANT, EffectDisappear(),
        GetLocalObject (oPlayer, "Temp_Guild_Mistress"));
    DeleteLocalObject (oPlayer, "Temp_Guild_Mistress");

    if (GetLocalInt (oPlayer, "Remove_Gnome"))
    {
        ApplyEffectAtLocation (DURATION_TYPE_INSTANT, EffectVisualEffect
            (VFX_FNF_SUMMON_MONSTER_2), GetLocation (oGnome));
        DestroyObject (oGnome);
        DeleteLocalInt (oPlayer, "Remove_Gnome");
        DeleteLocalObject (oPlayer, "Temp_Vault_Gnome");
    }
}
