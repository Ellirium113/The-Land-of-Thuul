
//NWSCRIPT
//MASTERM
//1-30-03
//Create Robe Items Coversation Node "Summon Boar"



void main()
{
object oPC=GetPCSpeaker();

AssignCommand(oPC, ActionCastSpellAtObject(SPELL_SUMMON_CREATURE_II, oPC, METAMAGIC_ANY, TRUE, 0, PROJECTILE_PATH_TYPE_DEFAULT, TRUE));
}

