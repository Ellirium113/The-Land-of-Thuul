////////////////////////////////////////////
// Script:  lrgwsaw_gotogw
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
//    This script sets CUSTOM token 10 to
// the name of this module to display in the
// conversation.
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

int StartingConditional()
{
   SetCustomToken(10, GetModuleName());
//
// Return true because we don't actually want
// to limit this choice from appearing.
//
   return TRUE;
}
