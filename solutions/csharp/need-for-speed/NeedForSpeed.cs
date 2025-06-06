using System;

class RemoteControlCar
{
    private int Distance { get; set; }  = 0;
    private int Battery { get; set; } = 100;

    private int Speed { get; }
    private int Drain { get; }

    public RemoteControlCar(int speed, int batteryDrain)
    {
        Speed = speed;
        Drain = batteryDrain;
    }
    public bool BatteryDrained() =>
        Drain > Battery;

    public int DistanceDriven() =>
        Distance;

    public void Drive()
    {
        if (BatteryDrained())
            return;
        
        Battery -= Drain;
        Distance += Speed;
    }

    public static RemoteControlCar Nitro() =>
        new(50, 4);
}

class RaceTrack
{

    private int Distance { get; }

    public RaceTrack(int distance)
    {
        Distance = distance;
    }
     

    public bool TryFinishTrack(RemoteControlCar car)
    {
        while (!car.BatteryDrained())
        {
            car.Drive();
        }
        
        return car.DistanceDriven() >= Distance;
    }
}
