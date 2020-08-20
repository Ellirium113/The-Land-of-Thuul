//::///////////////////////////////////////////////
//:: Default: On User Defined for Pack Ox
//:: rp_oud_pox
//:: Copyright (c) 2002 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Determines the course of action to be taken
    on a user defined event.
*/
//:://////////////////////////////////////////////
//:: Created By: Rogers Pessin
//:: Created On: August 4, 2002
//:://////////////////////////////////////////////

void main()
{
    int nEvent = GetUserDefinedEventNumber();

    switch (nEvent)
    {
        case 1007: // Pack Ox was killed
        {
            /*
            Drop the packs on the ox. An invisible placeable object is used
            to facilitate this, because otherwise the container created to
            hold the objects when the ox simply dies isn't large enough to
            hold all of the packs (it's just 1 "page" in size and only holds
            6 of the packs). By having the invisible placeable take all of the
            packs and then destroying said placeable, all of the packs are
            available to be looted.
            */
            FloatingTextStringOnCreature("The packs fall to the ground.",OBJECT_SELF,FALSE);
            object oTransferor = CreateObject(OBJECT_TYPE_PLACEABLE,"rp_gen_item_trfr",GetLocation(OBJECT_SELF));
            object oPack = GetFirstItemInInventory();
            object oOx = OBJECT_SELF;
            while (GetIsObjectValid(oPack))
            {
                // Only transfer the actual packs by this method.
                if (GetTag(oPack)=="ATS_S_L901_N_SLH")
                {
                    AssignCommand(oTransferor,ActionTakeItem(oPack,oOx));
                }
                oPack = GetNextItemInInventory();
            }
            DestroyObject(oTransferor,0.5);

            // Do the death mooo :)
            ActionSpeakString("Screeeeech");
            PlaySound("as_an_crittpeep2");
            break;
        }

        case 1050: // Pack Ox was loosely tied down... teleport it to its owner.
        {
            object oOwner = GetLocalObject(OBJECT_SELF,"RP_OWNER");

            // Make sure current owner object is valid and a PC still.
            if (GetIsObjectValid(oOwner) && GetIsPC(oOwner))
            {
                // Is owner in a different area now? If so, teleport to him/her.
                if (GetArea(OBJECT_SELF)!=GetArea(oOwner))
                {
                    ActionJumpToObject(oOwner,FALSE);
                }
            } // end if (GetIsObjectValid(oOwner) && GetIsPC(oOwner))

            // Lastly, resume following the owner at a close distance.
            ActionForceFollowObject(oOwner,FeetToMeters(5.0));
            break;
        }

        case 1051: // Take the pack from the owner and resume the conversation.
        {
            object oPack = GetLocalObject(OBJECT_SELF,"RP_PACK_OFF");
            object oMyOwner = GetLocalObject(OBJECT_SELF,"RP_OWNER");
            ActionTakeItem(oPack,oMyOwner);
            SetLocalObject(OBJECT_SELF,"RP_PACK_OFF",OBJECT_INVALID);
            ActionResumeConversation();
            break;
        }
    }
}
