////////////////////////////////////////////
// Script:  lrgwsat_shutdown
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
//    This script shuts down any existing
// portals the PC has.
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

#include "lrgws_include"

void main()
{
   lrgws_destroy_portals(GetPCSpeaker());
}
