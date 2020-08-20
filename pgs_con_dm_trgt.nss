//::///////////////////////////////////////////////
//:: Name: pgs_con_dm_trgt
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the option to edit target player
    information is available to the DM.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
int StartingConditional()
{
    object oPlayer = GetPCSpeaker();
    object oTarget = GetLocalObject (oPlayer, "Object_Target");

    //--------------------------------------------
    //Check for valid target, and not self.
    //--------------------------------------------
    return ((GetIsPC (oTarget)) && (oTarget != oPlayer));
}
