////////////////////////////////////////////
// Script:  lrgwymeus
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
//    This script acts as a generic item
//    activation wrapper.  Feel free to add
//    your own hooks for your own items.
//::::::::::::::::::::::::::::::::::::::::::
// Requirements
// 1. Must be attached to the module event
//    OnActivateItem.
// 2. You must #include any NW script files
//    containing the object activation actions
//    you want performed.
//::::::::::::::::::::::::::::::::::::::::::
// Notes
//    lrgwymeus is also the event handler
//    for the OnLock event for the Custom
//    generic trigger Gateway Home Portal.  This
//    script is not actually used by the trigger
//    as the Locked/Relocked property is turned
//    off.  It is there to make importing this
//    code easier because the import function
//    automatically brings in any scripts
//    "related" to events.
//::::::::::::::::::::::::::::::::::::::::::
// Modification History
// Date       Who           Modifications
// ---------- ------------- ----------------
//  7/20/2002 Lord Random   Created script
//  8/ 5/2002 Lord Random   Added Ability Score Armbands
////////////////////////////////////////////

#include "lrgws_include"
#include "lrgwy_include"

void main()
{
   object oItem=GetItemActivated();
   object oTarget=GetItemActivatedTarget();
   location lLocation=GetItemActivatedTargetLocation();
   object oActivator=GetItemActivator();
   string sItemTag=GetTag(oItem);

   if (GetIsObjectValid(oItem))
//
// Gateway Stones and their event handler, found
// in lrigwsmeus_gwstn
//
      if (sItemTag=="lrgwsip_gwstone")
      {
         lrgwsmeus_gwstn(oActivator, lLocation);
      }
      else if (sItemTag=="lrgwyip_abscore")
      {
         lrgwymeus_abarm(oActivator);
      }
   else
      SpeakString("That object can not be activated right now.");
}
