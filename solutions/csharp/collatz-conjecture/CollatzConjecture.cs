using System;

public static class CollatzConjecture
{
    public static int Steps(int number)
    {
        if (number < 1)
        {
            throw new ArgumentOutOfRangeException(nameof(number), number, "only positive integers are allowed");
        }
        
        int steps = 0;

        while (number > 1)
        {
            if (number % 2 == 0)
            {
                number /= 2;
            }
            else
            {
                number = number * 3 + 1;
            }
            steps += 1;
        }
        
        return steps;
    }
}