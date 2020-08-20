//::///////////////////////////////////////////////
//:: Name: pgs_door_ofto
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    OnFailToOpen event for guild doors.  This event
    will -always- fire, assuming selected guild
    doors are properly set to "locked" via the
    toolset.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"
#include "inc_gsystem_terr"

void main()
{
    object oPlayer = GetClickingObject();
    int iGuildDoor = GetTerritoryGuildNumber (GetPGSDoorTerritory (OBJECT_SELF));

    //--------------------------------------------
    //Check if the territory is claimed.
    //--------------------------------------------
    if (iGuildDoor > 0)
    {
        //--------------------------------------------
        //Attempt to match player guild and door guild.
        //--------------------------------------------
        if (GetLocalInt (oPlayer, "Player_Guild_Number") != iGuildDoor)
        {
            AssignCommand (oPlayer, SpeakString ("Bah!  Must be locked."));
            AssignCommand (oPlayer, PlayAnimation (ANIMATION_FIREFORGET_PAUSE_SCRATCH_HEAD));
            return;
        }
    }

    //--------------------------------------------
    //Open door for the player.
    //--------------------------------------------
    AssignCommand (oPlayer, SpeakString ("Hm, seems stuck...  *jiggles the " +
        "door handle*"));
    AssignCommand (oPlayer, PlayAnimation (ANIMATION_LOOPING_GET_MID, 1.0f, 2.0f));
    DelayCommand (1.5f, ActionOpenDoor (OBJECT_SELF));
}
