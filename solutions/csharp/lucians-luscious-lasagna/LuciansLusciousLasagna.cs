class Lasagna
{
    public int ExpectedMinutesInOven() =>
        40;
    
    public int RemainingMinutesInOven(int timeElapsed) =>
        ExpectedMinutesInOven() - timeElapsed;

    public int PreparationTimeInMinutes(int layers) =>
        2 * layers;

    public int ElapsedTimeInMinutes(int layers, int timeElapsed) =>
        PreparationTimeInMinutes(layers) + timeElapsed;
}
