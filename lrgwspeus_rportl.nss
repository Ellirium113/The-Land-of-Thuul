////////////////////////////////////////////
// Script:  lrgwspeus_rportl
// Author:  Lord Random
// Date:    August 13, 2002
// Version: 1.0
// Copyright (c) 2001 Bioware Corp.
//::::::::::::::::::::::::::::::::::::::::::
// Source(s)
// 1. Lord Random's Gateway-Builder's
//    Playground Module
//::::::::::::::::::::::::::::::::::::::::::
// Description
//    This script teleports the PC to the
// Gateway Home Portal if it exists.
//::::::::::::::::::::::::::::::::::::::::::
// Requirements
// 1. Must be attached to the placeable event
//    OnUsed for the Gateway Return Portal.
//::::::::::::::::::::::::::::::::::::::::::
// Notes
//::::::::::::::::::::::::::::::::::::::::::
// Modification History
// Date       Who           Modifications
// ---------- ------------- ----------------
//  8/13/2002 Lord Random   Created script
////////////////////////////////////////////

#include "lrtpt_include"

void main()
{
   object oPC=GetLastUsedBy();
   object oOwner=GetLocalObject(OBJECT_SELF, "LRGWS_Owner");
   location lPC=GetLocation(oPC);

//
// Make sure this is the portal owner
//
   if (oOwner==oPC)
   {
      if (GetLocalInt(oPC, "LRGWS_HomeIsSet")==TRUE)
      {
         ApplyEffectToObject(DURATION_TYPE_TEMPORARY,
            EffectParalyze(), oPC, 4.5);
         ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY,
            EffectVisualEffect(VFX_IMP_MAGIC_PROTECTION), lPC);
         DelayCommand(3.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY,
            EffectVisualEffect(VFX_IMP_DISPEL), lPC));
         DelayCommand(3.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY,
            EffectVisualEffect(VFX_IMP_EVIL_HELP), lPC));
         DelayCommand(4.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY,
            EffectVisualEffect(VFX_IMP_LIGHTNING_M), lPC));
         DelayCommand(5.0, ApplyEffectAtLocation(DURATION_TYPE_TEMPORARY,
            EffectVisualEffect(VFX_DUR_PROT_PREMONITION), lPC));

         DelayCommand(5.0, AssignCommand(oPC,
            ActionDoCommand(GroupJumpToLocation(oPC,
            GetLocalLocation(oPC, "LRGWS_HomeLoc")))));
      }
      else SpeakString("The Gateway Home Portal does not exist.");
   }
   else SpeakString("Only "+GetLocalString(oOwner, "LRGWS_OwnerName")+
      " may use this portal.");
}
