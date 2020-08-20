#include "hooker_action2"

void main()
{
   object oObject=GetPCSpeaker();
   object oHooker=OBJECT_SELF;
   string sString="iFee";
   int iCash=GetLocalInt(oObject, sString);

   HookerMain(oObject, oHooker, iCash);
   HookerEffect(oObject, iCash);

}
