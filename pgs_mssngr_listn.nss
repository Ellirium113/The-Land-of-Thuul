//::///////////////////////////////////////////////
//:: Name: pgs_mssngr_listn
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This script, depending on the current messenger
    state, with either enable or disable listening.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    //--------------------------------------------
    //If listening stop, and vice-versa.
    //--------------------------------------------
    SetListening (OBJECT_SELF, !GetIsListening (OBJECT_SELF));
}
