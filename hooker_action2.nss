// Created by Unwise
// 6.20.02
// Hooker action scripts

// Hopefully humourous cries in the night
string HookerCriesOfPassion();
// Run the standard hooker routine
void HookerMain( object oPC, object oHooker, int iFee);
// See what the customer gets for their money...
void HookerEffect(object oPC, int iFee);

string HookerCriesOfPassion()
{
    // Created by Unwise
    // 6.20.02
    // Return a random statement for the
    // hooker to scream out during the act

    switch (Random(7))
    {
        case 0: return "Oh gods!  Oh gods!  Ooooooooh!";
                break;

        case 1: return "Yeah baby, do it again!";
                break;

        case 2: return "Yes!  Push that button!";
                break;

        case 3: return "Mmmm, I can see you are a cunning linguist...";
                break;

        case 4: return "See?  Slippery when wet...";
                break;

        case 5: return "Oh yeah!  Pay me lip service!";
                break;

        case 6: return "Yeah!  How's THAT for a magic mouth?";
                break;
    }// end switch
    return "";
}// end Cries of Passion

void HookerMain( object oPC, object oHooker, int iFee)
{
    // Created by Unwise
    // 6.20.02

    // Does the PC have the money?  If so, take it
    if (GetGold(oPC) >= iFee)
        {TakeGoldFromCreature (iFee, oPC, TRUE);}
    else {return;}

    // Next, take control of the PC

    // Hooker says
    object oDoor = GetObjectByTag("gingerdoor");
    ActionCloseDoor(oDoor);

    // Move hooker and the PC to the waypoint
    location lWP_Bed = GetLocation(GetObjectByTag("gingerbed"));
    AssignCommand(oHooker, ActionMoveToLocation(lWP_Bed));
    AssignCommand(oPC, ActionMoveToLocation(lWP_Bed));
    AssignCommand(oHooker, ActionSpeakString("Let's dim the lights, lover..."));

    // Center a darkness efffect on the hooker
    effect eFade = EffectVisualEffect (VFX_DUR_DARKNESS);
    AssignCommand(oHooker, ActionDoCommand(ApplyEffectToObject (DURATION_TYPE_PERMANENT, eFade, oHooker)));

    //Toss in a cry of passion
    AssignCommand(oHooker, ActionWait(3.0));
    AssignCommand(oHooker, ActionSpeakString(HookerCriesOfPassion(), TALKVOLUME_TALK));
    AssignCommand(oHooker, ActionWait(3.0));
    AssignCommand(oHooker, ActionDoCommand(HookerEffect (oPC, iFee)));
    AssignCommand(oHooker, ActionDoCommand(RemoveEffect (oHooker, eFade)));

}// end main


void HookerEffect(object oPC, int iFee)
{
    // Created by Unwise
    // 7.21.02

    // Depending on how much they paid, the customer
    // can get a large variety of effects...
    int nRoll=0;
    int nType=0;
    int nEffect=0;
    effect effX;

    if (iFee == 2) nRoll = d6();
    if (iFee == 5) nRoll = d10();
    if (iFee == 10) nRoll = Random(15);
    if (iFee > 10) nRoll = d20();

    switch (nRoll)
    {
        case 1:     // Disease
            nType=1; nEffect = DISEASE_SOLDIER_SHAKES; break;
        case 2:
            nType=1; nEffect = DISEASE_SHAKES; break;
        case 3:
            nType=1; nEffect = DISEASE_BLINDING_SICKNESS; break;
        case 4:     // Nothing

        case 5:     // Nothing
            break;
        case 6:     // Healing
            nType=2; nEffect = SPELL_HEAL; break;
        case 7:     // Nothing

        case 8:     // Nothing
            break;
        case 9:

        case 10:
            nType=3; nEffect = EFFECT_TYPE_HASTE; break;
        case 11:
            nType=3; nEffect = EFFECT_TYPE_ABILITY_INCREASE; break;
        case 12:
            nType=3; nEffect = EFFECT_TYPE_SAVING_THROW_INCREASE; break;
        case 13:
            nType=3; nEffect = EFFECT_TYPE_AC_INCREASE; break;
        case 14:
            nType=3; nEffect = EFFECT_TYPE_ATTACK_INCREASE; break;
        case 15:
            nType=3; nEffect = EFFECT_TYPE_DAMAGE_IMMUNITY_INCREASE; break;
        case 16:
            nType=3; nEffect = EFFECT_TYPE_SAVING_THROW_INCREASE; break;
        case 17:
            nType=3; nEffect = EFFECT_TYPE_DAMAGE_REDUCTION; break;
        case 18:
            nType=3; nEffect = EFFECT_TYPE_DAMAGE_RESISTANCE; break;
        case 19:
            nType=3; nEffect = EFFECT_TYPE_ELEMENTALSHIELD; break;
        case 20:
            nType=3; nEffect = EFFECT_TYPE_SAVING_THROW_INCREASE; break;
    }// end switch

    // Apply the effect to the PC
    switch (nType)
    {
        case 0: //Nothing
            break;
        case 1: // Disease
            effX = EffectDisease(nEffect);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, effX, oPC, 600.0);
            break;
        case 2: // Spell
            // Can't seem to get it to work without having
            // the NPC cast a spell.  Pity.
            ActionCastSpellAtObject(nEffect, oPC, METAMAGIC_ANY, TRUE, 0, PROJECTILE_PATH_TYPE_DEFAULT, TRUE);
            break;
        case 3: // Effect
            effX = EffectAbilityIncrease(nEffect, 1);
            ApplyEffectToObject(DURATION_TYPE_TEMPORARY, effX, oPC, 600.0);
            break;
    }// end switch
} // end HookerEffect

