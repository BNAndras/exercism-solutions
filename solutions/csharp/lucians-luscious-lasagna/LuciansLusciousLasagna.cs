class Lasagna
{
    public int ExpectedMinutesInOven() => 40;
    
    public int RemainingMinutesInOven(int timeElapsed) =>
        ExpectedMinutesInOven() - timeElapsed;
    
    public int PreparationTimeInMinutes(int numberOfLayers) =>
        numberOfLayers * 2;

    public int ElapsedTimeInMinutes(int numberOfLayers, int timeInOven) =>
        PreparationTimeInMinutes(numberOfLayers) + timeInOven;
}
