void main()
{
   object oChair=OBJECT_SELF;
   float oFace = GetFacing(oChair);

   AssignCommand(GetLastUsedBy(), ActionSit(oChair));
   AssignCommand(GetLastUsedBy(), SetFacing(oFace));
}

