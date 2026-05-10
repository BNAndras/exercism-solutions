static class AssemblyLine
{
    private static double BaseHourlyRate => 221.0;

    public static double SuccessRate(int speed) =>
        speed switch
        {
            0    => 0.00,
            <= 4 => 1.00,
            <= 8 => 0.90,
            9    => 0.80,
            10   => 0.77,
            _    => 0.0
        };
    
    public static double ProductionRatePerHour(int speed) => speed * (BaseHourlyRate * SuccessRate(speed));

    public static int WorkingItemsPerMinute(int speed) => (int) ProductionRatePerHour(speed) / 60;
}
