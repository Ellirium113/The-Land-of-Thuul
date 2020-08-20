//::///////////////////////////////////////////////
//:: Name
//:: FileName
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
"Scare" the ox so that is will move out of the way.
This prevents the ox from being able to pin people
in and have to kill the ox to get away. After the
ox has run a few meters, have it resume whatever it
was previously doing.
*/
//:://////////////////////////////////////////////
//:: Created By: Rogers Pessin (Tigsen)
//:: Created On: August 4, 2002
//:://////////////////////////////////////////////

void main()
{
    // Scare the ox into moving 3m from the scarer.
    object oScarer = GetPCSpeaker();
    if (oScarer==OBJECT_INVALID) return;

    AssignCommand(oScarer,ActionSpeakString("Move out of my way, ya big ox!"));
    ClearAllActions();
    ActionMoveAwayFromObject(oScarer, TRUE, 5.0);

    // Lastly, see if we need to continue following the ox's owner.
    int iStatus = GetLocalInt(OBJECT_SELF,"RP_OX_STATUS");
    if (iStatus)
    {
        // iStatus is TRUE, which means the ox was following its owner.
        object oOwner = GetLocalObject(OBJECT_SELF,"RP_Owner_Obj");
        if (GetIsObjectValid(oOwner) && GetIsPC(oOwner))
        {
            // Resume following the owner after fleeing from the scarer.
            ActionForceFollowObject(oScarer,FeetToMeters(IntToFloat(iStatus)));
        } // end if (GetIsObjectValid(oOwner) && GetIsPC(oOwner))
    } // end if (iStatus)
} // end void main()
