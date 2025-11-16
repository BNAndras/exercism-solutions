static class AssemblyLine
{
    private static int BaseProductionRate => 221;
    
    public static double SuccessRate(int speed) =>
        speed switch
        {
            0 => 0.0,
            <= 4 => 1.0,
            <= 8 => 0.9,
            9 => 0.8,
            10 => 0.77,
            _ => 0.0
        };

    public static double ProductionRatePerHour(int speed) =>
        BaseProductionRate * speed * SuccessRate(speed);

    public static int WorkingItemsPerMinute(int speed) =>
        (int) ProductionRatePerHour(speed) / 60;
}