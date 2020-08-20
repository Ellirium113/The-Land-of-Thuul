//::///////////////////////////////////////////////
//:: Name: pgs_con_dm_grant
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Check if the option to grant guild creation
    access for the targeted player is available
    to the DM.

    Note: This is option is only available if
    restricted guild creation has been enabled.
*/
//:://////////////////////////////////////////////
//:: Created By:
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_cnfg"

int StartingConditional()
{
    return PGS_RESTRICT_GUILD_CREATION;
}
