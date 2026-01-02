public static class BinarySearch
{
    public static int Find(int[] input, int value)
    {
        int startPosition = 0;
        int stopPosition = input.Length - 1;
        while (startPosition <= stopPosition)
        {
            int guessPosition = (startPosition + stopPosition) / 2;
            int guess = input[guessPosition];
            if (guess == value)
            {
                return guessPosition;
            }

            if (guess < value)
            {
                startPosition = guessPosition + 1;
            }
            else
            {
                stopPosition = guessPosition - 1;
            }
        }

        return -1;
    }
}
