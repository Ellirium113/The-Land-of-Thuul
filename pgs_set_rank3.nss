//::///////////////////////////////////////////////
//:: Name: pgs_set_rank3
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Demote the targeted guild member to rank 3.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"

void main()
{
    object oPlayer = GetPCSpeaker();

    //--------------------------------------------
    //Update targeted player's guild rank.
    //--------------------------------------------
    ChangeTargetPlayerRank (oPlayer, GetLocalObject (oPlayer, "Object_Target"), 3);
}
