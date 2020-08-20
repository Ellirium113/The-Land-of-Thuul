//::///////////////////////////////////////////////
//:: Name: pgs_door_open
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    OnOpen event for guild doors.  This script
    will handle the simple process for re-closing
    and locking the guild doors after a delay
    (can be edited in "inc_gsystem_cnfg" script).
*/
//:://////////////////////////////////////////////
//:: Created By:Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem_cnfg"

void main()
{
    //--------------------------------------------
    //Check if we should close & lock the door.
    //--------------------------------------------
    if (PGS_GUILD_DOOR_CLOSE_DELAY == 0.0f)
        return;

    //--------------------------------------------
    //After the delay, close the guild door.  No
    //need to lock the door again, as it has not
    //been unlocked, only opened (the way Bioware
    //coded it).
    //--------------------------------------------
    DelayCommand (PGS_GUILD_DOOR_CLOSE_DELAY, ActionCloseDoor (OBJECT_SELF));
}
