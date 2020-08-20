//::///////////////////////////////////////////////
//:: FileName dlg_plott_04
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 5/23/2009 12:52:23 AM
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Make sure the PC speaker has these items in their inventory
    if(!HasItem(GetPCSpeaker(), "iplotgolanjournal"))
        return FALSE;

    return TRUE;
}
