public static class Leap {
    public static bool IsLeapYear(int year) =>
        year.HasFactorOf(4) && (!year.HasFactorOf(100) || year.HasFactorOf(400));
}

public static class IntExtensions {
    public static bool HasFactorOf(this int number, int divisor) =>
        number % divisor == 0;
}
