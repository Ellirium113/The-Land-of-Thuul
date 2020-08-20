//::///////////////////////////////////////////////
//:: FileName chk_10gold
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 2003-02-21 10:09:29
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Make sure the PC speaker has these items in their inventory
    int cash = GetGold(GetPCSpeaker());
    if(cash < 10)
        return FALSE;

    return TRUE;
}
