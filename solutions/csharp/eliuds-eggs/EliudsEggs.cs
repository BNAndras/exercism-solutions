public static class EliudsEggs
{
    public static int EggCount(int encodedCount)
    {
        int eggs = 0;
        int working = encodedCount;
        while (working != 0)
        {
            working &= (working - 1);
            eggs += 1;
        }
        return eggs;
    }
}
