//::///////////////////////////////////////////////
//:: Name: pgs_con_gcolor
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the option to edit guild lighting
    effects is available to the guild leader.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_cnfg"

int StartingConditional()
{
    return PGS_ENABLE_GUILD_COLOR_LIGHTING;
}
