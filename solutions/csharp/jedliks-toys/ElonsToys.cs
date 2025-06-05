class RemoteControlCar
{
    private int TotalDistanceDriven { get; set; } = 0;
    private int DrivableDistance => 20;
    
    private int BatteryLevel { get; set; } = 100;
    private int BatteryDrain => 1;
    
    public static RemoteControlCar Buy() =>
        new();

    public string DistanceDisplay() =>
        $"Driven {TotalDistanceDriven} meters";

    public string BatteryDisplay() =>
        BatteryLevel switch
        {
            0 => "Battery empty",
            _ => $"Battery at {BatteryLevel}%"
        };

    public void Drive()
    {
        if (!CanDrive())
            return;
        
        TotalDistanceDriven += DrivableDistance;
        BatteryLevel -= BatteryDrain;
    }

    private bool CanDrive() =>
        BatteryLevel >= BatteryDrain;
}
