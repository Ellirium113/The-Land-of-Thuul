//::///////////////////////////////////////////////
//:: Name: pgs_territory_en
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    OnEnd script for the territory conversation.
    Remove any variables no longer needed.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Delete local variables...
    //--------------------------------------------
    DeleteLocalInt (oPlayer, "Territory_Number");
    DeleteLocalInt (oPlayer, "Territory_Marker_Used");

    DeleteLocalString (oPlayer, "Temp_Territory_Name");
}
