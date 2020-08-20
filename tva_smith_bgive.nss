//::///////////////////////////////////////////////
//:: FileName tva_smith_bgive
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Jacob Scott
//:: Created On: 27/07/2004 2:38:51 AM
//:://////////////////////////////////////////////
void main()
{
    // Give the speaker the items. If you wish to add your own guide to the items the smith can craft for you, replace the
    // blueprint. So if you had a book, The Guide to Bob's Forge, whose blueprint was TGTBF, the script would look like:
    // CreateItemOnObject("TGTBF", GetPCSpeaker(), 1);

    CreateItemOnObject("thewaysoftheforg", GetPCSpeaker(), 1);

}
