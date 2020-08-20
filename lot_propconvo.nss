void main()
{
    object oUser = GetLastUsedBy();
    if(GetIsPC(oUser))
        ActionStartConversation(oUser);
}
