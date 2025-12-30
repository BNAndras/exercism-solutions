class RemoteControlCar(int speed, int batteryDrain)
{
    private int _battery = 100;
    private int _distance;
    
    private int Speed => speed;
    private int BatteryDrain => batteryDrain;

    public bool BatteryDrained() => _battery < BatteryDrain;
    public int DistanceDriven() => _distance;

    public void Drive()
    {
        if (BatteryDrained()) return;
        _battery -= BatteryDrain;
        _distance += Speed;
    }

    public static RemoteControlCar Nitro() => new(50, 4);
}

class RaceTrack(int distance)
{
    private int Distance => distance;

    public bool TryFinishTrack(RemoteControlCar car)
    {
        while (car.DistanceDriven() < Distance && !car.BatteryDrained())
        {
            car.Drive();
        }
        
        return car.DistanceDriven() == Distance;
    }
}
