//::///////////////////////////////////////////////
//:: NW_O2_GARGOYLE.nss
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
   Turns the placeable into a gargoyle
   if a player comes near enough.
*/
//:://////////////////////////////////////////////
//:: Created By:   Brent
//:: Created On:   January 17, 2002
//:://////////////////////////////////////////////


void main()
{
   object oCreature = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR, PLAYER_CHAR_IS_PC);
   if (GetIsObjectValid(oCreature) == TRUE && GetDistanceToObject(oCreature) < 25.0)
   {
    ActionCastSpellAtObject (SPELL_LIGHTNING_BOLT, oCreature, TRUE, 3, TRUE);
    }
}
