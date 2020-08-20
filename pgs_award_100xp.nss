//::///////////////////////////////////////////////
//:: Name: pgs_award_100xp
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Attempt to award the targeted player with 100
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
        "Object_Target"), 100);
}
