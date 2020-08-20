//::///////////////////////////////////////////////
//:: Name darklamp_hb
//:: FileName darklamp_hb
//:: Copyright (c) 2002 Adam Forster
//:://////////////////////////////////////////////
/*
This is the OnHeartbeat script for the Dark Lamp
and Enchanted Dark Lamp placables.
*/
//:://////////////////////////////////////////////
//:: Created By: Adam Forster
//:: Created On: 12/01/02
//:://////////////////////////////////////////////


void main()
{

    // Check if the lamp is active, which is when active variable set to false
    if (!GetLocalInt(OBJECT_SELF, "LAMP_ACTIVE"))
    {
        // Kludge to make lamp tops 'off' when they are first created
        if (GetPlaceableIllumination(OBJECT_SELF))
        {
            SetPlaceableIllumination(OBJECT_SELF, FALSE);
            RecomputeStaticLighting(GetArea(OBJECT_SELF));
        }
        // Lamp is active, so create darkness that lasts until next heartbeat
        effect eDarkness = EffectVisualEffect(VFX_DUR_DARKNESS);
        ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eDarkness, OBJECT_SELF, 6.0);
    }
}
