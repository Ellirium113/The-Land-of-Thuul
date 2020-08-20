//::///////////////////////////////////////////////
//:: SetListeningPatterns
//:: rp_pox_onconv
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    This is the normal on conversation script
    with the exception that the conversation
    started with the speaker is private.
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Oct 24, 2001
//:://////////////////////////////////////////////

//:://////////////////////////////////////////////
//:: Modified By: Rogers Pessin (Tigsen)
//:: Created On: Aug 4, 2002
//:://////////////////////////////////////////////

#include "NW_I0_GENERIC"

void main()
{
    int nMatch = GetListenPatternNumber();
    object oShouter = GetLastSpeaker();
    object oIntruder;

    if (nMatch == -1 && GetCommandable(OBJECT_SELF))
    {
        ClearAllActions();
        // Rogers change is the next line, making the conversation with the ox private.
        ActionStartConversation(oShouter,"",TRUE);
    }
    else
    if(nMatch != -1 && GetIsObjectValid(oShouter) && !GetIsPC(oShouter) && GetIsFriend(oShouter))
    {
        if(nMatch == 4)
        {
            oIntruder = GetLocalObject(oShouter, "NW_BLOCKER_INTRUDER");
        }
        else if (nMatch == 5)
        {
            oIntruder = GetLastHostileActor(oShouter);
            if(!GetIsObjectValid(oIntruder))
            {
                oIntruder = GetAttemptedAttackTarget();
                if(!GetIsObjectValid(oIntruder))
                {
                    oIntruder = GetAttemptedSpellTarget();
                    if(!GetIsObjectValid(oIntruder))
                    {
                        oIntruder = OBJECT_INVALID;
                    }
                }
            }
        }
        RespondToShout(oShouter, nMatch, oIntruder);
    }


    if(GetSpawnInCondition(NW_FLAG_ON_DIALOGUE_EVENT))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1004));
    }
}
