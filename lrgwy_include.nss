void lrgwymeus_abarm(object oActivator);
void ChangeAlignment(object oCreature, int nAlignment,
   int nAlignmentScale=ALIGNMENT_GOOD, int bFullChange=FALSE);

////////////////////////////////////////////
// Script:  lrgwy_include
// Author:  Lord Random
// Date:    August 5, 2002
// Version: 1.0
// Copyright (c) 2001 Bioware Corp.
//::::::::::::::::::::::::::::::::::::::::::
// Source(s)
// 1. Lord Random's Gateway-Builder's
//    Playground Module
//::::::::::::::::::::::::::::::::::::::::::
// Description
//    This is the include file for the Gateway
//    (gwy) Project.
//::::::::::::::::::::::::::::::::::::::::::
// Requirements
//::::::::::::::::::::::::::::::::::::::::::
// Notes
//::::::::::::::::::::::::::::::::::::::::::
// Modification History
// Date       Who           Modifications
// ---------- ------------- ----------------
//  8/ 5/2002 Lord Random   Created script
////////////////////////////////////////////

// Functions

////////////////////////////////////////////
// Script:  lrgwymeus_abarm
// Author:  Lord Random
// Date:    August 5, 2002
// Version: 1.0
// Copyright (c) 2001 Bioware Corp.
//::::::::::::::::::::::::::::::::::::::::::
// Description
//    This function activates a conversation
//    with the Ability Score Armband when it
//    has been "used".
//::::::::::::::::::::::::::::::::::::::::::
// Requirements
// 1. This function must be #include'd in the
//    module event script lrgwymeus.
//::::::::::::::::::::::::::::::::::::::::::
// Notes
//::::::::::::::::::::::::::::::::::::::::::
// Modification History
// Date       Who           Modifications
// ---------- ------------- ----------------
//  8/ 5/2002 Lord Random   Created script
////////////////////////////////////////////

void lrgwymeus_abarm(object oActivator)
{
   AssignCommand(oActivator,
      ActionStartConversation(oActivator, "lrgwyo_abarm",
      TRUE));
}

////////////////////////////////////////////
// Script:  ChangeAlignment
// Author:  Lord Random
// Date:    August 5, 2002
// Version: 1.0
// Copyright (c) 2001 Bioware Corp.
//::::::::::::::::::::::::::::::::::::::::::
// Description
//    This function changes the alignment of
//    the object creature passed as a
//    parameter.
//::::::::::::::::::::::::::::::::::::::::::
// Requirements
//::::::::::::::::::::::::::::::::::::::::::
// Notes
//::::::::::::::::::::::::::::::::::::::::::
// oCreature.........The creature who's alignment will be changed
// nAlignment........What to change the alignment to
// nAlignmentScale...ALIGNMENT_GOOD, _EVIL, _CHAOTIC,
//                   or _LAWFUL.  Only used when the
//                   alignment is NEUTRAL to pinpoint
//                   which kind of neutral-good/evil
//                   or law/chaos?
// bFullChange.......Change them all the way to the
//                   extreme of the alignment?
//::::::::::::::::::::::::::::::::::::::::::
// Modification History
// Date       Who           Modifications
// ---------- ------------- ----------------
//  8/ 5/2002 Lord Random   Created script
////////////////////////////////////////////

void ChangeAlignment(object oCreature, int nAlignment,
   int nAlignmentScale=ALIGNMENT_GOOD, int bFullChange=FALSE)
{
   int nCurrentGoodEvil=GetGoodEvilValue(oCreature);
   int nCurrentLawChaos=GetLawChaosValue(oCreature);
   switch(nAlignment)
   {
      case ALIGNMENT_GOOD:
         AdjustAlignment(oCreature, ALIGNMENT_GOOD, 100-nCurrentGoodEvil);
         if (bFullChange==TRUE)
            ChangeAlignment(oCreature, nAlignment, nAlignmentScale, FALSE);
         break;
      case ALIGNMENT_EVIL:
         AdjustAlignment(oCreature, ALIGNMENT_EVIL, nCurrentGoodEvil);
         if (bFullChange==TRUE)
            ChangeAlignment(oCreature, nAlignment, nAlignmentScale, FALSE);
         break;
      case ALIGNMENT_LAWFUL:
         AdjustAlignment(oCreature, ALIGNMENT_LAWFUL, 100-nCurrentLawChaos);
         if (bFullChange==TRUE)
            ChangeAlignment(oCreature, nAlignment, nAlignmentScale, FALSE);
         break;
      case ALIGNMENT_CHAOTIC:
         AdjustAlignment(oCreature, ALIGNMENT_CHAOTIC, nCurrentLawChaos);
         if (bFullChange==TRUE)
            ChangeAlignment(oCreature, nAlignment, nAlignmentScale, FALSE);
         break;
      case ALIGNMENT_NEUTRAL:
         if (nAlignmentScale==ALIGNMENT_GOOD || nAlignmentScale==ALIGNMENT_EVIL)
         {
            if (nCurrentGoodEvil > 50)
            {
               AdjustAlignment(oCreature, ALIGNMENT_EVIL, nCurrentGoodEvil-50);
               if (bFullChange==TRUE)
                  ChangeAlignment(oCreature, nAlignment, nAlignmentScale, FALSE);
            }
            else
            {
               AdjustAlignment(oCreature, ALIGNMENT_GOOD, 50-nCurrentGoodEvil);
               if (bFullChange==TRUE)
                  ChangeAlignment(oCreature, nAlignment, nAlignmentScale, FALSE);
            }
         }
         else if (nAlignmentScale==ALIGNMENT_LAWFUL || nAlignmentScale==ALIGNMENT_CHAOTIC)
         {
            if (nCurrentLawChaos > 50)
            {
               AdjustAlignment(oCreature, ALIGNMENT_CHAOTIC, nCurrentLawChaos-50);
               if (bFullChange==TRUE)
                  ChangeAlignment(oCreature, nAlignment, nAlignmentScale, FALSE);
            }
            else
            {
               AdjustAlignment(oCreature, ALIGNMENT_LAWFUL, 50-nCurrentLawChaos);
               if (bFullChange==TRUE)
                  ChangeAlignment(oCreature, nAlignment, nAlignmentScale, FALSE);
            }
         }
         break;
   }
}

//void main()
//{
//}
