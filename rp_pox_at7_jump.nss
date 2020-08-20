//::///////////////////////////////////////////////
//:: Name
//:: FileName
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
Send the ox a user defined event to tell it to jump to its owner.
This is used to facilitate the ox getting through portals that it
would otherwise have trouble traversing.
*/
//:://////////////////////////////////////////////
//:: Created By: Rogers Pessin (Tigsen)
//:: Created On: August 4, 2002
//:://////////////////////////////////////////////

void main()
{
    event eAreaCheck = EventUserDefined(1050);
    // A delay of 20 is used to give the owner plenty of time to zone.
    DelayCommand(20.0,SignalEvent(OBJECT_SELF,eAreaCheck));
}
