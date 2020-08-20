//::///////////////////////////////////////////////
//:: Name: pgs_update_color
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Update the guild color effect for the players
    guild.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"
#include "nw_i0_spells"

void main()
{
    object oLoop = GetFirstPC();
    object oPlayer = GetPCSpeaker();
    int iGuild = GetLocalInt (oPlayer, "Player_Guild_Number");
    int iGuildColor = GetModuleGuildColor (iGuild);

    //--------------------------------------------
    //Loop through guild members, and update color.
    //--------------------------------------------
    while (GetIsObjectValid (oLoop))
    {
        if (GetLocalInt (oLoop, "Player_Guild_Number") == iGuild)
        {
            RemoveSpecificEffect (EFFECT_TYPE_VISUALEFFECT, oLoop);

            //--------------------------------------------
            //Check if to apply new guild color to the PC.
            //--------------------------------------------
            if (iGuildColor != 0)
                ApplyEffectToObject (DURATION_TYPE_PERMANENT, EffectVisualEffect
                    (iGuildColor), oLoop);
        }

        oLoop = GetNextPC();
    }

    //--------------------------------------------
    //Send guild notice informing players of color.
    //--------------------------------------------
    SendPGSGuildNotice (iGuild, "Guild color has been updated!");
}
