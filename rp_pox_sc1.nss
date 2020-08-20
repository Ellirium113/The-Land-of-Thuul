//::///////////////////////////////////////////////
//:: Name
//:: FileName
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
Determines whether the person speaking to the ox
is the owner or not. If they are, then returns TRUE.
*/
//:://////////////////////////////////////////////
//:: Created By: Rogers Pessin
//:: Created On: August 4, 2002
//:://////////////////////////////////////////////

int StartingConditional()
{
    object oSpeaker = GetPCSpeaker();
    if (oSpeaker==OBJECT_INVALID) return FALSE;

    // Get the public CD key of the person trying to speak to/control
    // the ox.
    string sSpeakerCDK = GetPCPublicCDKey(oSpeaker);

    // Retrieve the public CD key of the person who actually is supposed
    // to control the ox.
    string sTrueOwnerCDK = GetLocalString(OBJECT_SELF,"RP_OWNER_CDK");

    // Is the person speaking to the ox the true owner?
    if (sSpeakerCDK==sTrueOwnerCDK)
    {
        SetLocalObject(OBJECT_SELF,"RP_OWNER",oSpeaker);
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
