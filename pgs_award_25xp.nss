//::///////////////////////////////////////////////
//:: Name: pgs_award_25xp
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Attempt to award the targeted player with 25
    experience points.
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
    //Award the experience to the target player.
    //--------------------------------------------
    AwardTargetPlayerWithGuildXP (oPlayer, GetLocalObject (oPlayer,
        "Object_Target"), 25);
}
