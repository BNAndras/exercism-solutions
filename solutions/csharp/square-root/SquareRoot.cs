public static class SquareRoot
{
    public static int Root(int number)
    {
        if (number == 1)
        {
            return 1;
        }
        
        double guess = number;
        double limit = 1;
        while (guess - limit > 0.01)
        {
            guess = (guess + limit) / 2;
            limit = number / guess;
        }

        return (int)guess; 
    }
}
