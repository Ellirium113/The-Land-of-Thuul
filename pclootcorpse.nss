#include "inc_loglevel"
#include "x0_i0_corpses"
#include "nw_i0_plot"

void main(){
    object oPC = GetLastRespawnButtonPresser();

    debug("Player " + GetName(oPC) + " is respawning.");
    //Delete any existing corpses and any existing coprse keys for this player.
    object oCorpseKey = GetLocalObject(oPC, "CORPSE_KEY");
    object oCorpse = GetLocalObject(oPC, "CORPSE_PLACABLE");

    if(GetIsObjectValid(oCorpseKey))
        DestroyObject(oCorpseKey);

    if(GetIsObjectValid(oCorpse))
        DestroyObject(oCorpse);

    //Create a "corpse" placeable on the ground below the player.
    location lPC = GetLocation(oPC);
    oCorpse = CreateObject(OBJECT_TYPE_PLACEABLE, "player_corpse001", lPC);
    //Transfer all of the players gear into the "corpse".
    object oItem;
    int i;
    for (i=0; i < NUM_INVENTORY_SLOTS; i++) {
        oItem = GetItemInSlot(i, oPC);
        // See if we're going to allow looting of this item.
        if (GetIsObjectValid(oItem) && GetDroppableFlag(oItem)) {
            CopyItem2(oItem, oCorpse);
            DestroyObject(oItem, 0.1);
        }
    }
    oItem = GetFirstItemInInventory(oPC);
    while(GetIsObjectValid(oItem)){
        if (GetDroppableFlag(oItem) && oItem != oCorpseKey) {
            if(GetBaseItemType(oItem) == BASE_ITEM_LARGEBOX){
                if(GetIsObjectValid(GetFirstItemInInventory(oItem))){ //If a container has any items in it's inventory, it won't be copied for some reason.  So lets just replace it with a new one.
                    CreateItemOnObject(GetResRef(oItem), oCorpse, 1, GetTag(oItem));
                }
            }
            // Copy to the corpse and destroy
            CopyItem2(oItem, oCorpse);
            DestroyObject(oItem, 0.1);
        }
        oItem = GetNextItemInInventory(oPC);
    }

    //If we didn't put anything into corpse, just remove it from game.
    if(!GetIsObjectValid(GetFirstItemInInventory(oCorpse))){
        DestroyObject(oCorpse);
    }else{

        //Make a new key and assign it a random tag and give it to the player.
        string sCorpseKeyTag = "CORPSE_KEY_"+GetPCPublicCDKey(oPC);
        oCorpseKey = CreateItemOnObject("corpse_key", oPC, 1, sCorpseKeyTag);
        //Set the "Corpse" key tag to the new key
        SetLocked(oCorpse, TRUE);
        SetLockKeyRequired(oCorpse);
        SetLockKeyTag(oCorpse, sCorpseKeyTag);
        SetName(oCorpse, GetName(oPC));

        //Set up to automatically remove key on unlock.
        SetEventScript(oCorpse, EVENT_SCRIPT_PLACEABLE_ON_UNLOCK, "pclootcorpse_ulk");

        SetLocalObject(oPC, "CORPSE_PLACABLE", oCorpse);
        SetLocalObject(oPC, "CORPSE_KEY", oCorpseKey);
    }

    //Return pc to life
    object oRespawner = GetLastRespawnButtonPresser();
    ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectResurrection(),oRespawner);
    ApplyEffectToObject(DURATION_TYPE_INSTANT,EffectHeal(GetMaxHitPoints(oRespawner)), oRespawner);
    RemoveEffects(oRespawner);

    //Teleport player to current checkpoin in journal.
    int iResPointId = GetLocalInt(oPC, "NW_JOURNAL_ENTRY"+"pc_respawn_checkpoint");
    if(iResPointId == 0){
        AddJournalQuestEntry("pc_respawn_checkpoint", 1, oPC, FALSE);
        iResPointId = 1;
    }
    string sCheckpointTag = "PC_RESPAWN_POINT_"+IntToString(iResPointId);
    object oCheckpoint = GetWaypointByTag(sCheckpointTag);
    AssignCommand(
        oPC,
        JumpToObject(oCheckpoint)
    );
}
