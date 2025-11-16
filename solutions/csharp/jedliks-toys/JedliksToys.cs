class RemoteControlCar
{
    private int TotalDistance { get; set; }
    private int Battery { get; set; } = 100;

    private int BatteryPerTick => 1;
    
    private int DistancePerTick => 20;

    public static RemoteControlCar Buy() => new();

    public string DistanceDisplay() =>
        $"Driven {TotalDistance} meters";
    
    public string BatteryDisplay() =>
        CanDrive() ? $"Battery at {Battery}%" : "Battery empty";

    private bool CanDrive() => Battery > 0;
    
    public void Drive()
    {
        if (CanDrive())
        {
            TotalDistance += DistancePerTick;
            Battery -= BatteryPerTick;
        }
    }
}
