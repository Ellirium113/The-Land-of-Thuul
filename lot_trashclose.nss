void EmptyTrashCan(){
    object oItem = GetFirstItemInInventory();
    while(GetIsObjectValid(oItem)){
        DestroyObject(oItem);
        oItem = GetNextItemInInventory();
    }
}

void main(){
    ClearAllActions();
    ActionWait(30.0);
    ActionDoCommand(EmptyTrashCan());
}