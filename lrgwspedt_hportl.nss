////////////////////////////////////////////
// Script:  lrgwspedt_hportl
// Author:  Lord Random
// Date:    July 20, 2002
// Version: 1.0
// Copyright (c) 2001 Bioware Corp.
//::::::::::::::::::::::::::::::::::::::::::
// Source(s)
// 1. Lord Random's Gateway-Builder's
//    Playground Module
//::::::::::::::::::::::::::::::::::::::::::
// Description
//    This script let's the owner of a portal
// know that it has been destroyed and sets
// their local variable to know that fact.
//::::::::::::::::::::::::::::::::::::::::::
// Requirements
// 1. Must be attached to the Placeable Object
//    event OnDeath for the Gateway Home Portal.
//::::::::::::::::::::::::::::::::::::::::::
// Notes
//::::::::::::::::::::::::::::::::::::::::::
// Modification History
// Date       Who           Modifications
// ---------- ------------- ----------------
//  7/20/2002 Lord Random   Created script
////////////////////////////////////////////

void main()
{
   object oOwner=GetLocalObject(OBJECT_SELF, "LRGWS_Owner");

   FloatingTextStringOnCreature(GetName(GetLastKiller())+
      " just destroyed your Gateway Home Portal.", oOwner, FALSE);
   SetLocalInt(oOwner, "LRGWS_HomeIsSet", FALSE);
   DeleteLocalObject(oOwner, "LRGWS_HomeObj");
   DeleteLocalLocation(oOwner, "LRGWS_HomeLoc");
}
