#include "dm_forge_config"
void main()
{
    object oItem = GetLastDisturbed();
    object oPC = GetLastUsedBy();

    if(!PLOT_UNFORGEABLE) return;

    if(GetPlotFlag(oItem))
    {
        CopyItem(oItem,oPC,TRUE);
        DestroyObject(oItem,0.5);
        SendMessageToPC(oPC,"You cannot forge that item");
    }
}
