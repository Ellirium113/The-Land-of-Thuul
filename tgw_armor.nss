void Paralyze(float fDelay)
{
    // Following code example from Jasperre
    SetPlotFlag(OBJECT_SELF, FALSE);
    SetImmortal(OBJECT_SELF, FALSE);
    AssignCommand(OBJECT_SELF,ActionPlayAnimation(ANIMATION_LOOPING_PAUSE, 1.0, fDelay));
    DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectParalyze(), OBJECT_SELF));
    SetAILevel(OBJECT_SELF, AI_LEVEL_VERY_LOW);
    DelayCommand(fDelay+0.5,SetPlotFlag(OBJECT_SELF, TRUE));
    DelayCommand(fDelay+0.5,SetImmortal(OBJECT_SELF, TRUE));
}

void main()
{
    object oArmor = GetNearestObject(OBJECT_TYPE_ITEM);
    object oCopy = CopyItem(oArmor, OBJECT_SELF);
    AssignCommand(OBJECT_SELF, ActionEquipItem(oCopy, INVENTORY_SLOT_CHEST));
    DelayCommand(0.5+Random(12), ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_DUR_FREEZE_ANIMATION), OBJECT_SELF));
}
