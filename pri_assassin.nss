//::///////////////////////////////////////////////
//:: Assassin end of Combat Script
//:: pri_assassin
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Calls the end of combat script every round
    Checks to see if target dead. If dead, drops note
    and assassin is deleted.
*/
//:://////////////////////////////////////////////
//:: Created By: Preston Watamaniuk
//:: Created On: Oct 16, 2001
//:://////////////////////////////////////////////

#include "NW_I0_GENERIC"
void main()
{

//PRI Mod

int iHP = 1;
object oTarget = GetAttackTarget();
if (oTarget == OBJECT_INVALID) oTarget = GetAttemptedAttackTarget();

if (GetIsPC(oTarget))
{
 iHP = GetCurrentHitPoints(oTarget);
 location lLoc = GetLocation(OBJECT_SELF);

 if (iHP < 1)
  {
  CreateObject(OBJECT_TYPE_ITEM, "assassinnote", lLoc, FALSE);
  DestroyObject(OBJECT_SELF);
  }
}

//End of PRI Mod

    if(GetBehaviorState(NW_FLAG_BEHAVIOR_SPECIAL))
    {
        DetermineSpecialBehavior();
    }
    else if(!GetSpawnInCondition(NW_FLAG_SET_WARNINGS))
    {
       DetermineCombatRound();
    }
    if(GetSpawnInCondition(NW_FLAG_END_COMBAT_ROUND_EVENT))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1003));
    }
}


