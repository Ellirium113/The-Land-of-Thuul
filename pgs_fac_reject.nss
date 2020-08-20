//::///////////////////////////////////////////////
//:: Name: pgs_fac_decline
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    The new guild faction has been rejected.
    Inform both players of the status.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Inform both players faction was rejected.
    //--------------------------------------------
    SendMessageToPC (oPlayer, "You have rejected the guild faction offer.");
    SendMessageToPC (GetLocalObject (oPlayer, "Object_Activator"), GetName
        (oPlayer) + " has rejected your guild faction offer.");
}
