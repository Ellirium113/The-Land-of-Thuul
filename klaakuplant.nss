void main()
{
object oPC = GetLastUsedBy();
int oRandom = d6();
if (oRandom ==1)
    {
    CreateItemOnObject("klaakubean", oPC, 1);
    }
else if (oRandom == 2)
    {
    CreateItemOnObject("klaakubean001", oPC, 1);
    }
else if (oRandom == 3)
    {
    CreateItemOnObject("klaakubean002", oPC, 1);
    }
else if (oRandom == 4)
    {
    CreateItemOnObject("klaakubean003", oPC, 1);
    }
else if (oRandom == 5)
    {
    CreateItemOnObject("klaakubean004", oPC, 1);
    }
else
    {
    CreateItemOnObject("klaakubean005", oPC, 1);
    }
SendMessageToPC(oPC, "You got a Klaaku bean!");
}
