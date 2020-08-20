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
object oPc;
object oTarget;
object oDest;
location ldest;
  oPc = GetLastAttacker();
  AssignCommand(oPc, ClearAllActions());
  oDest = GetWaypointByTag("pr_cell");
  DelayCommand(2.0,AssignCommand(oPc, ActionJumpToObject(oDest)));
  oTarget = oPc;
  ApplyEffectAtLocation(DURATION_TYPE_INSTANT,
        EffectVisualEffect(VFX_IMP_RESTORATION_GREATER),GetLocation(oTarget));
  SurrenderToEnemies();
  SetStandardFactionReputation(STANDARD_FACTION_COMMONER,80,oTarget);
  SetStandardFactionReputation(STANDARD_FACTION_DEFENDER,80,oTarget);
  ClearAllActions();
  RemoveItems(oTarget,TRUE,TRUE,TRUE,GetObjectByTag("bailiff"));
// Remove items from oTargets inventory
//     oTarget - The object to remove the items from
//     bInv    - If this is true, the script will remove items from the inventory
//     bGold   - If this is true, the script will also remove all gold
//     bSlots  - If this is true, the script also removes items equiped by oTarget
//     oMoveTo - If an object is specified, all items and gold will be moved to this object
 SetCampaignInt("prison","cell",1);
 //now add the prison uniform and put it on.
object oUniform = CreateItemOnObject("pr_outfit",oPc,1);
AssignCommand(oPc,ActionEquipItem(oUniform,INVENTORY_SLOT_CARMOUR));
}


