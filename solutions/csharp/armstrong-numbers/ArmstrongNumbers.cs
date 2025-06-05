public static class ArmstrongNumbers
{
    public static bool IsArmstrongNumber(int number)
    {
        string digits = number.ToString();
        return digits
            .Select(x => x.ToString())
            .Select(int.Parse)
            .Sum(x => (int)Math.Pow(x, digits.Length))
            .Equals(number);
    }
}