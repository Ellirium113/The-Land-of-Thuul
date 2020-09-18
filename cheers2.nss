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
            ActionSpeakString("HIT HIM ALREADY! WHAT ARE YOU WAITING FOR?");
            ActionWait(25.0);
            ActionSpeakString("BRAVO!");
            ActionWait(45.0);
            ActionDoCommand(
                SetLocalInt(OBJECT_SELF, "onUserDef_ALREADY_RUNNING", FALSE)
            );
        }

        break;
    }
}
