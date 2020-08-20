//::///////////////////////////////////////////////
//:: Custom User Defined Event
//:: FileName
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Melee Instructor UserDefined
*/
//:://////////////////////////////////////////////
//:: Created By: Windhawk
//:: Created On: 26.11.02
//:://////////////////////////////////////////////

void main()
{
    int nUser = GetUserDefinedEventNumber();

    if(nUser == 1001) //HEARTBEAT
    {

    }
    else if(nUser == 4000) // Signalled
    {
     if (GetIsListening(OBJECT_SELF))
       {
          object oTrainee = GetLocalObject(OBJECT_SELF, "target");
          SetListening(OBJECT_SELF, FALSE);
          ClearAllActions();
          AssignCommand(oTrainee, ClearAllActions());
          ActionSpeakString("Ok,Thats all I can show you today. Come back tomorrow and I will teach you more.");
          SetIsTemporaryFriend(oTrainee);
          SetPlotFlag(OBJECT_SELF, TRUE);
          DelayCommand(6.0, ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_DEFENDER));
          DelayCommand(6.2, ClearPersonalReputation(oTrainee, OBJECT_SELF));
       }
    }
    else if(nUser == 1003) // END OF COMBAT
    {
     object oPC1 = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC);
     int iHP = GetCurrentHitPoints(oPC1);
     if (iHP<5 && GetIsListening(OBJECT_SELF))
       {
         SetListening(OBJECT_SELF, FALSE);
         ClearAllActions();
         AssignCommand(oPC1, ClearAllActions());
         ActionSpeakString("Don't use your face for a shield. Use the weapon, concentrate.");
         SetIsTemporaryFriend(oPC1);
         SetPlotFlag(OBJECT_SELF, TRUE);
         DelayCommand(6.0, ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_DEFENDER));
         DelayCommand(6.2, ClearPersonalReputation(oPC1, OBJECT_SELF));
       }
    }
    else if(nUser == 1004) // ON DIALOGUE
    {
     if (GetIsListening(OBJECT_SELF))
       {
        object oPC = GetLastSpeaker();
        if (GetIsPC(oPC))
          {
           int nPattern = GetListenPatternNumber();
           if (nPattern == 500)
             {
              SetListening(OBJECT_SELF, FALSE);
              ClearAllActions();
              AssignCommand(oPC, ClearAllActions());
              ActionSpeakString("GOOD JOB. Stop by later for more.");
              SetIsTemporaryFriend(oPC);
              SetPlotFlag(OBJECT_SELF, TRUE);
              DelayCommand(6.0, ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_DEFENDER));
              DelayCommand(6.2, ClearPersonalReputation(oPC, OBJECT_SELF));
             }


          }

       }
    }
    else if(nUser == 1005) // ATTACKED
    {

    }
    else if(nUser == 1006) // DAMAGED
    {
     object oPC = GetLastDamager();
     object oWeapon = GetItemInSlot(INVENTORY_SLOT_RIGHTHAND, oPC);
     if (GetWeaponRanged(oWeapon) == TRUE)
       {
         SpeakString("I can teach you a thing or two about combat.");
       }
     int iDam = GetTotalDamageDealt();
     if (GetWeaponRanged(oWeapon) != TRUE && oPC == GetLocalObject(OBJECT_SELF, "target"))
       {
        int iRan;
        GiveXPToCreature(oPC, iDam);
        int iRan2 = d3(1);
        if (iDam >12 && iRan2 == 1)
          {
           iRan = d6(1);
           switch (iRan)
             {
              case 1: SpeakString("HA! you call that a hit?");break;
              case 2: SpeakString("Good form!, keep it up");break;
              case 3: SpeakString("Follow through...GOOD!");break;
              case 4: SpeakString("You are learning..ha ha");break;
              case 5: SpeakString("I let you get that one.");break;
              case 6: SpeakString("Good Techniques!...I am pleased.");break;
             }
          }
       }
      ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(iDam), OBJECT_SELF);

    }
    else if(nUser == 1007) // DEATH
    {

    }
    else if(nUser == 5000) // SetListening
    {
     SetListenPattern(OBJECT_SELF, "**(stop)**", 500);
     SetListening(OBJECT_SELF, FALSE);
    }

}

