public static class BinarySearch
{
    public static int Find(int[] input, int value)
    {
        int start = 0;
        int end = input.Length - 1;
        while (start <= end)
        {
            int middle = (start + end) / 2;
            int element = input[middle];
            if (value == element)
            {
                return middle;
            }
            
            if (value < element)
            {
                end = middle - 1;
            }
            else
            {
                start = middle + 1;
            }
        }

        return -1;
    }
}
