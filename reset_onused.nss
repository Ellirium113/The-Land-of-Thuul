void main()
{
 object oCaller = GetLastUsedBy();
 object oVoter = GetFirstPC();
 vector vPosition;
 location lLoc;
 string sVoting = "A vote to reset the module has been called. Please say YES or NO to cast your vote, repeating it until you are informed your vote has been registered. You have 20 seconds to decide.";
 while(GetIsObjectValid(oVoter))
 {
   vPosition = GetPosition(oVoter) - Vector(1.0,1.0,0.0);
   lLoc = Location(GetArea(oVoter),vPosition,GetFacing(oVoter));
   CreateObject(OBJECT_TYPE_CREATURE,"votingbooth",lLoc);
   DelayCommand(1.0f,SendMessageToPC(oVoter,sVoting));
   oVoter = GetNextPC();
 }
 DelayCommand(21.0f,SignalEvent(OBJECT_SELF,EventUserDefined(1500)));
}

