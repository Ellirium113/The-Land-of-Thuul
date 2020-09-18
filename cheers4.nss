// Script: sc_oldmanudef
// Function: Set the behaviour of the oldman NPC on heartbeat
// Author: Nathan Laing
// E-Mail: nazz@bigpond.com

void main()
{

    int nCalledBy = (GetUserDefinedEventNumber());
    int iIsAlreadyRunning = GetLocalInt(OBJECT_SELF, "onUserDef_ALREADY_RUNNING");

    switch(nCalledBy)
    {
        case 1001:  // Called by OnHeartbeat

        if (!IsInConversation(OBJECT_SELF) && !iIsAlreadyRunning)
        {
            SetLocalInt(OBJECT_SELF, "onUserDef_ALREADY_RUNNING", TRUE);
            ActionSpeakString("HA GOOD MOVE!");
            ActionWait(15.0);
            ActionSpeakString("CUT OFF HIS HEAD!");
            ActionWait(28.0);
            ActionDoCommand(
                SetLocalInt(OBJECT_SELF, "onUserDef_ALREADY_RUNNING", FALSE)
            );
        }

        break;
    }
}
