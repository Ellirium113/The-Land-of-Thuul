void main()
{
    object oPlayer = GetLastPlayerDied();

    PopUpDeathGUIPanel(oPlayer, TRUE, TRUE, 1,
        "If you press respawn, your inventory and gear will be dropped on the ground and you will be respawned at your last checkpoint. Should you die before you are able to recover your corpse, the items on your corpse will be lost."
    );
}
