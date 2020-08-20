#include "dm_inc_forge"

void main()
{
    object oPC = GetPCSpeaker();
    object oForge = GetObjectByTag("omegaforge" + GetStringRight(GetTag(OBJECT_SELF),1));
    object oAnvil = GetObjectByTag("omegaanvil" + GetStringRight(GetTag(OBJECT_SELF),1));
    object oOriginal = GetFirstItemInInventory(oForge);
    object oModified = GetFirstItemInInventory(oAnvil);
    int iGold = GetLocalInt(OBJECT_SELF,"GoldCost");
    int iTokens = GetLocalInt(OBJECT_SELF,"TokenCost");

    DestroyObject(oOriginal);
    oOriginal = CopyItem(oModified, oForge);
    DestroyObject(oModified);

    if(PAYMENT_METHOD == 1)
    {
        AssignCommand(oPC, TakeGoldFromCreature(iGold, oPC, TRUE));
    }
    else
    if(PAYMENT_METHOD == 2)
    {
        GetTokens(oPC, iTokens);
    }
    else
    if(PAYMENT_METHOD == 3)
    {
        AssignCommand(oPC, TakeGoldFromCreature(iGold, oPC, TRUE));
        GetTokens(oPC,iTokens);
    }

    SetLocalInt(oOriginal,"FORGED_ITEM",1);
    effect eForge = EffectVisualEffect(VFX_FNF_SOUND_BURST);
    ApplyEffectToObject(DURATION_TYPE_INSTANT, eForge, oForge);
}
