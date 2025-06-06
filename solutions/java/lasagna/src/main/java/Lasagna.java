public class Lasagna {
    public static int expectedMinutesInOven() {
        return 40;
    }

    public static int remainingMinutesInOven(int timeElapsed) {
        return expectedMinutesInOven() - timeElapsed;
    }

    public static int preparationTimeInMinutes(int layers) {
        return layers * preparationTimePerLayer();
    }

    public static int totalTimeInMinutes(int layers, int timeElapsed) {
        return preparationTimeInMinutes(layers) + timeElapsed;
    }

    private static int preparationTimePerLayer() {
        return 2;
    }
}
