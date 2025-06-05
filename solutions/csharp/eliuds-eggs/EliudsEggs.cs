public static class EliudsEggs
{
    public static int EggCount(int encodedCount)
    {
        int eggs = 0;

        while (encodedCount > 0)
        {
            encodedCount &= (encodedCount - 1);
            eggs += 1;
        }
        return eggs;
    }
}
