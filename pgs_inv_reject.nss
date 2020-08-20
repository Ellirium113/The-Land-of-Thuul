//::///////////////////////////////////////////////
//:: Name: pgs_inv_reject
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Inform both players (target & activator) that
    the guild invitation was rejected.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
void main()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Inform both players invite was rejected.
    //--------------------------------------------
    SendMessageToPC (oPlayer, "You have rejected the guild invitation offer.");
    SendMessageToPC (GetLocalObject (oPlayer, "Object_Activator"), GetName
        (oPlayer) + " has rejected your guild invitation offer.");

    DeleteLocalInt (oPlayer, "In_Invite_Convo");  /*Can recieve invites again.*/
}
