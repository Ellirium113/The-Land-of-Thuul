#include "udk_include"
void main()
{
  object oDyeKit = GetLocalObject(OBJECT_SELF, "DyeKit");
  AdjustCurrentDyeKitColor(oDyeKit, -10);
}
