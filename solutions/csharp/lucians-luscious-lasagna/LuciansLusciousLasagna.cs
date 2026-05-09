class Lasagna
{
    public int ExpectedMinutesInOven() => 40;

    public int RemainingMinutesInOven(int timeElapsed) => ExpectedMinutesInOven() - timeElapsed;

    public int PreparationTimeInMinutes(int numberOfLayers) => 2 * numberOfLayers;

    public int ElapsedTimeInMinutes(int numberOfLayers, int cookingTimeElapsed) => cookingTimeElapsed + PreparationTimeInMinutes(numberOfLayers);
}
