//::///////////////////////////////////////////////
//:: Name: pgs_default_gm
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    A default template for creating the Guild
    Mistress and setting her up to listen.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oPlayer = GetPCSpeaker();
    object oMistress = CreateObject (OBJECT_TYPE_CREATURE, "guildmistress",
        GetLocation (oPlayer), TRUE);  /*Creates the Guild Mistress.*/

    //--------------------------------------------
    //Face each other, and save objects for use.
    //--------------------------------------------
    AssignCommand (oPlayer, SetFacingPoint (GetPosition (oMistress)));
    AssignCommand (oMistress, SetFacingPoint (GetPosition (oPlayer)));
    SetLocalObject (oPlayer, "Temp_Guild_Mistress", oMistress);
    SetLocalObject (oMistress, "Temp_Player", oPlayer);

    //--------------------------------------------
    //Set Guild Mistress to listen for guild name.
    //--------------------------------------------
    SetListening (oMistress, TRUE);
    SetListenPattern (oMistress, "**", 2001);
}
