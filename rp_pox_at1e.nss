//::///////////////////////////////////////////////
//:: Name
//:: FileName
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
Return the pack to the ox, if the owner has it or is near it.
Event signalling had to be used due to peculiarities in how
the NWN script engine appears to handle scripts run as part
of a conversation. Without using the signals the ox would never
register as having received the pack while still in the conversation.
*/
//:://////////////////////////////////////////////
//:: Created By: Rogers Pessin (Tigsen)
//:: Created On: August 4, 2002
//:://////////////////////////////////////////////

void main()
{
    object oPack = GetLocalObject(OBJECT_SELF,"RP_PACK_OFF");
    if (GetIsObjectValid(oPack))
    {
        object oOx = OBJECT_SELF;
        object oOxOwner = GetPCSpeaker();
        object oPackPossessor = GetItemPossessor(oPack);

        if (oPackPossessor==oOxOwner)
        {
            ActionPauseConversation();
            AssignCommand(oOxOwner,ActionMoveToObject(oOx));
            AssignCommand(oOxOwner,ActionDoCommand(SignalEvent(oOx,EventUserDefined(1051))));
        }
        else if ((oPackPossessor==OBJECT_INVALID)&& (GetDistanceBetween(oOxOwner,oPack)<10.0))
        {
            ActionPauseConversation();
            AssignCommand(oOxOwner,ActionPickUpItem(oPack));
            AssignCommand(oOxOwner,ActionMoveToObject(oOx));
            AssignCommand(oOxOwner,ActionDoCommand(SignalEvent(oOx,EventUserDefined(1051))));
        }
    }
}
