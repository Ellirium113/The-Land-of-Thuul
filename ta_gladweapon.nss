// a Corny Script

#include "NW_O2_CONINCLUDE"

void RespawnObject(int iType, string sResRef, location lLoc)
{
    CreateObject(iType, sResRef, lLoc);
}


void main()

{
    int iType = GetObjectType(OBJECT_SELF);
    string sResRef = GetResRef(OBJECT_SELF);
    location lLoc = GetLocation(OBJECT_SELF);

    // 5 minute delay
    float fDelay = 30.0;
    AssignCommand(GetModule(), DelayCommand(fDelay, RespawnObject(iType, sResRef, lLoc)));
    DestroyObject(OBJECT_SELF, 5.0);
}
