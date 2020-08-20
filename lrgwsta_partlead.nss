////////////////////////////////////////////
// Script:  lrgwsta_partlead
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
//    This script sends the PC to their
// party leader.
//::::::::::::::::::::::::::::::::::::::::::
// Requirements
// 1. Must be attached to the conversation
//    lrgwso_gwstone.
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
   object oPC=GetPCSpeaker();
   object oLeader=GetFactionLeader(oPC);

   if (oLeader != OBJECT_INVALID)
   {
      PlaySound("as_wt_thundercl4");
      JumpToLocation(GetLocation(oLeader));
   }
}
