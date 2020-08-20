//::///////////////////////////////////////////////
//:: Name: pgs_mod_activate
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Module item activated script for the Player
    Guild System (PGS) "Guild Journal."
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    //--------------------------------------------
    //Execute the script corresponding to the tag
    //of the last item activated.
    //--------------------------------------------
    ExecuteScript (GetTag (GetItemActivated()), GetItemActivator());
}
