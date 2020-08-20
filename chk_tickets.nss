//::///////////////////////////////////////////////
//:: FileName chk_vermin_lic
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Script Wizard
//:: Created On: 2003-02-18 16:56:31
//:://////////////////////////////////////////////
#include "nw_i0_tool"

int StartingConditional()
{

    // Make sure the PC speaker not has a ticket
    if(HasItem(GetPCSpeaker(), "tick_vip_card"))
        return FALSE;

    if(HasItem(GetPCSpeaker(), "tick_to_raven"))
        return FALSE;

    return TRUE;
}
