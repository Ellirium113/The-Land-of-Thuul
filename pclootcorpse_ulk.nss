#include "inc_loglevel"

void main()
{
    object oPC = GetLastUnlocked();
    debug("Corpse opened by "+GetName(oPC));
    if(GetIsPC(oPC)){
        debug("Destroying corpse key.");
        //Destroy the players corpse key.
        DestroyObject(
            GetLocalObject(
                oPC,
                "CORPSE_KEY"
            )
        );
    }
}
