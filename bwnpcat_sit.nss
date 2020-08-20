////////////////////////////////////////////
// Script:  bwnpcat_sit
// Author:  BioWare, David Gaider
// Date:    July 5, 2002
// Version: 1.0
// Copyright (c) 2001 Bioware Corp.
//::::::::::::::::::::::::::::::::::::::::::
// Source(s)
// 1. Lord Random's Gateway-Builder's
//    Playground Module
// 2. BioWare Forums (http://nwn.bioware.com/forums/viewtopic.html?topic=81523&forum=47)
//::::::::::::::::::::::::::::::::::::::::::
// Description
//    This script causes the sitting NPC to
// sit back down after a conversation.
//::::::::::::::::::::::::::::::::::::::::::
// Requirements
// 1. Must be attached to the conversation
//    bwnpcp_sit.
//::::::::::::::::::::::::::::::::::::::::::
// Notes
//::::::::::::::::::::::::::::::::::::::::::
// Modification History
// Date       Who           Modifications
// ---------- ------------- ----------------
//  7/ 5/2002 BioWare       Created script
//  8/ 5/2002 Lord Random   Typed it in
////////////////////////////////////////////

void main()
{
   ActionSit (GetNearestObjectByTag ("Chair",
      OBJECT_SELF));
}
