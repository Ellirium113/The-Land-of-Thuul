//::///////////////////////////////////////////////
//:: Name: pgs_terr_claim
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Claim the selected territory for the player's
    guild.
*/
//:://////////////////////////////////////////////
//:: Created By: Samius Maximus
//:: Created On:
//:://////////////////////////////////////////////
#include "inc_gsystem"
#include "inc_gsystem_terr"

void main()
{
    object oPlayer = GetPCSpeaker();
    int iPlayerGuild = GetLocalInt (oPlayer, "Player_Guild_Number");
    int iTerritory = GetLocalInt (oPlayer, "Territory_Number");
    int iGuildTerritory = GetTerritoryGuildNumber (iTerritory);

    if (iGuildTerritory == 0)  /*Check if territory is claimed.*/
    {
        string sArea = GetName (GetArea (GetObjectByTag ("Territory_Flag_" +
            IntToString (iTerritory))));

        //--------------------------------------------
        //Claim the territory for the player's guild.
        //--------------------------------------------
        SetTerritoryGuildNumber (iTerritory, iPlayerGuild);
        SetTerritoryName (iTerritory, GetModuleGuildName (iPlayerGuild) + "'s " +
            "Territory");
        ApplyEffectToObject (DURATION_TYPE_INSTANT, EffectVisualEffect
            (VFX_IMP_DIVINE_STRIKE_HOLY), OBJECT_SELF);
        SendPGSGuildNotice (iPlayerGuild, "A new territory, located in " +
        sArea + ", has been claimed!");
        SetModuleRecentPGSActivity (GetModuleGuildName (iPlayerGuild) + " " +
            "claimed a territory in " + sArea + ".");
    }
    else
    {
        object oArea = GetArea (oPlayer);
        object oLoop = GetFirstPC();

        //--------------------------------------------
        //Territory is claimed - check for members.
        //--------------------------------------------
        while (GetIsObjectValid (oLoop))
        {
            //--------------------------------------------
            //Check for nearby guild members for this terr.
            //--------------------------------------------
            if ((GetArea (oLoop) == oArea) && (GetLocalInt (oLoop, "Player_Guild_Number") == iGuildTerritory))
            {
                SendMessageToPC (oPlayer, "This territory cannot be claimed, " +
                    "as there are guild members for this territory nearby.");
                return;
            }

            oLoop = GetNextPC();
        }

        int iTerrCount = GetGuildTerritoryCount (iPlayerGuild);
        //--------------------------------------------
        //Check if territory limit has been reached.
        //--------------------------------------------
        if (iTerrCount >= PGS_GUILD_TERRITORY_LIMIT)
        {
            SendMessageToPC (oPlayer, "Your have reached the limit for " +
                "number of claimable territories per guild (" + IntToString
                (PGS_GUILD_TERRITORY_LIMIT) + ").");
            return;
        }

        string sArea = GetName (GetArea (GetObjectByTag ("Territory_Flag_" +
            IntToString (iTerritory))));

        //--------------------------------------------
        //No members found - claim territory.
        //--------------------------------------------
        SetTerritoryGuildNumber (iTerritory, iPlayerGuild);
        SetTerritoryName (iTerritory, GetModuleGuildName (iPlayerGuild) + "'s " +
            "Territory");
        ApplyEffectToObject (DURATION_TYPE_INSTANT, EffectVisualEffect
            (VFX_IMP_DIVINE_STRIKE_HOLY), OBJECT_SELF);
        SendPGSGuildNotice (iPlayerGuild, "A new territory, located in " +
            sArea + ", has been claimed!");
        SetGuildTerritoryCount (iPlayerGuild, iTerrCount + 1);
        SetModuleRecentPGSActivity (GetModuleGuildName (iPlayerGuild) + " " +
            "claimed a territory in " + sArea + ".");
    }

    //------------------------------------------------
    //Check if we need to update max territory number.
    //------------------------------------------------
    if (iTerritory > GetMaxTerritoryNumber())
        SetMaxTerritoryNumber (iTerritory);
}
