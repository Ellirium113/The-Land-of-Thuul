//::///////////////////////////////////////////////
//:: Name: pgs_temp_private
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Set the temporary status of the new guild to
    private.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    SetLocalString (GetPCSpeaker(), "Temp_Guild_Privacy", "private");
}
