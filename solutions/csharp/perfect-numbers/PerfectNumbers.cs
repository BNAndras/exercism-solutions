public enum Classification
{
    Perfect,
    Abundant,
    Deficient
}

public static class PerfectNumbers
{
    public static Classification Classify(int number)
    {
        if (number <= 0)
            throw new ArgumentOutOfRangeException(
                nameof(number),
                number,
                "Number must be greater than zero.");
        
        int aliquot = AliquotSum(number);

        if (number < aliquot)
            return Classification.Abundant;
        if (number > aliquot)
            return Classification.Deficient;
        return Classification.Perfect;
    }

    private static int AliquotSum(int number) =>
        Enumerable
            .Range(1, number / 2)
            .Where(n => number % n == 0)
            .Sum();
}