#include "nw_i0_plotwizard"
void main()
{
    object oItemToTake = GetItemPossessedBy(GetPCSpeaker(), "SpiderEye");
    DestroyObject(oItemToTake);
    GiveGoldToCreature(GetPCSpeaker(), 50000);
    PWSetMinLocalIntPartyPCSpeaker("p007state_NW_KOBOLD004", 3);
    PWSetMinLocalIntPartyPCSpeaker("p007state", 3);
    PWGiveExperienceParty(GetPCSpeaker(), 3500);
}
