void RemoveItems( object oTarget, int bInv = TRUE, int bGold = TRUE, int bSlots = FALSE, object oMoveTo = OBJECT_INVALID )
{
    object oItem ;
    int i ;

    // Remove all items in oTargets inventory
    if ( bInv == TRUE )
    {
        oItem = GetFirstItemInInventory( oTarget ) ;

        while ( GetIsObjectValid( oItem ) )
        {
            // Move items to oMoveTo
            if ( GetIsObjectValid( oMoveTo ) )
            {
                CopyItem( oItem, oMoveTo, TRUE ) ;
            }

            DestroyObject( oItem ) ;

            oItem = GetNextItemInInventory( oTarget ) ;
        }
    }

    // Take all gold possessed by oTarget
    if ( bGold == TRUE )
    {
        int nGold = GetGold( oTarget ) ;

        TakeGoldFromCreature( nGold, oTarget, TRUE ) ;

        // Create same amount of gold on oMoveTo
        if ( GetIsObjectValid( oMoveTo ) )
        {
            // Gold can only be stacked to a max of 50000, so if oTarget has more
            // we'll need to divide it into smaller stacks
            if ( nGold > 50000 )
            {
                int nStacks = FloatToInt( ( nGold / 50000.0 ) + 0.99999 ) ;

                for ( i = 0 ; i < nStacks ; i++ )
                {
                    CreateItemOnObject( "nw_it_gold001", oMoveTo, nGold ) ;

                    nGold = nGold - 50000 ;
                }
            }
            else
            {
                CreateItemOnObject( "nw_it_gold001", oMoveTo, nGold ) ;
            }
        }
    }

    // Remove all items equiped by oTarget
    if ( bSlots == TRUE )
    {
        int nSlot ;

        for ( nSlot = 0 ; nSlot < NUM_INVENTORY_SLOTS ; nSlot++ )
        {
            oItem = GetItemInSlot( nSlot, oTarget ) ;

            if ( GetIsObjectValid( oItem ) )
            {
                // Move items to oMoveTo
                if ( GetIsObjectValid( oMoveTo ) )
                {
                    CopyItem( oItem, oMoveTo, TRUE ) ;
                }

                DestroyObject( oItem ) ;
            }
        }
    }
}
void main()
{
//triggered when you answer the questions correct on the convo with the bailiff
object oBailiff = GetObjectByTag("bailiff");
object oPlayer = GetNearestCreature(CREATURE_TYPE_PLAYER_CHAR,PLAYER_CHAR_IS_PC);
object oPrison = GetObjectByTag("prisondoor");
object oOffice = GetObjectByTag("officedoor");
AssignCommand(oBailiff,ActionUnlockObject(oPrison));
AssignCommand(oBailiff,ActionOpenDoor(oPrison));
// Remove items from oTargets inventory
//     oTarget - The object to remove the items from
//     bInv    - If this is true, the script will remove items from the inventory
//     bGold   - If this is true, the script will also remove all gold
//     bSlots  - If this is true, the script also removes items equiped by oTarget
//     oMoveTo - If an object is specified, all items and gold will be moved to this object
RemoveItems(oBailiff,TRUE,FALSE,FALSE,oPlayer);
AssignCommand(oBailiff,ActionMoveToLocation(GetLocation(GetWaypointByTag("pr_ba_office"))));
AssignCommand(oBailiff,ActionCloseDoor(oPrison));
AssignCommand(oBailiff,ActionLockObject(oPrison));
AssignCommand(oBailiff,ActionMoveToLocation(GetLocation(GetWaypointByTag("pr_ba_office"))));
AssignCommand(oBailiff,ActionCloseDoor(oOffice));
AssignCommand(oBailiff,ActionLockObject(oOffice));
}
