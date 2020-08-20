void GroupJumpToObject(object oPC, object oToJumpTo, int nWalkStraightLineToPoint=1);
void GroupJumpToLocation(object oPC, location lDestination);

////////////////////////////////////////////
// Script:  lrtpt_include
// Author:  Lord Random
// Date:    August 12, 2002
// Version: 1.0
// Copyright (c) 2001 Bioware Corp.
//::::::::::::::::::::::::::::::::::::::::::
// Source(s)
// 1. Lord Random's Gateway-Builder's
//    Playground Module
//::::::::::::::::::::::::::::::::::::::::::
// Description
//    This script provides the new functions
// GroupJumpToObject() and GroupJumpToLocation()
// which perform the same function as
// JumpToObject() and JumpToLocation() except
// all of the PC's associates (henchmen, summoned
// creatures, charmed creatures, familiars, and
// animal companions) are Jumped as well.
//::::::::::::::::::::::::::::::::::::::::::
// Requirements
//::::::::::::::::::::::::::::::::::::::::::
// Notes
//::::::::::::::::::::::::::::::::::::::::::
// Modification History
// Date       Who           Modifications
// ---------- ------------- ----------------
//  8/12/2002 Lord Random   Created functions
////////////////////////////////////////////

void GroupJumpToObject(object oPC, object oToJumpTo, int nWalkStraightLineToPoint=1)
{
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_ANIMALCOMPANION, oPC),
      JumpToObject(oToJumpTo,
      nWalkStraightLineToPoint));
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_DOMINATED, oPC),
      JumpToObject(oToJumpTo,
      nWalkStraightLineToPoint));
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_FAMILIAR, oPC),
      JumpToObject(oToJumpTo,
      nWalkStraightLineToPoint));
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_HENCHMAN, oPC),
      JumpToObject(oToJumpTo,
      nWalkStraightLineToPoint));
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_SUMMONED, oPC),
      JumpToObject(oToJumpTo,
      nWalkStraightLineToPoint));
   AssignCommand(oPC, JumpToObject(oToJumpTo,
      nWalkStraightLineToPoint));
}

void GroupJumpToLocation(object oPC, location lDestination)
{
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_ANIMALCOMPANION, oPC),
      JumpToLocation(lDestination));
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_DOMINATED, oPC),
      JumpToLocation(lDestination));
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_FAMILIAR, oPC),
      JumpToLocation(lDestination));
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_HENCHMAN, oPC),
      JumpToLocation(lDestination));
   AssignCommand(GetAssociate(
      ASSOCIATE_TYPE_SUMMONED, oPC),
      JumpToLocation(lDestination));
   AssignCommand(oPC, JumpToLocation(
      lDestination));
}

//void main()
//{
//}
