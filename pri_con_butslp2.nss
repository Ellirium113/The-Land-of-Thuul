//::///////////////////////////////////////////////
//:: Checks to see how many guests allowed in suite
//:: pri_con_butslp2
//:: Copyright (c) 2002 Shepherd Software Inc.
//:://////////////////////////////////////////////
/*

*/
//:://////////////////////////////////////////////
//:: Created By: Russell S. Ahlstrom
//:: Created On: July 1, 2002
//:://////////////////////////////////////////////

#include "pri_inc"

int StartingConditional()
{
    GetInnArea(OBJECT_SELF);

    if(GetLocalInt(OBJECT_SELF, "RSA_SleepOver") > 1)
        return TRUE;

    return FALSE;
}
