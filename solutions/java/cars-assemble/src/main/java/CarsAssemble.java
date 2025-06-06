public class CarsAssemble {
    public double productionRatePerHour(int speed) {
        double production = switch (speed) {
            case 5:
            case 6:
            case 7:
            case 8:
                yield 0.9;
            case 9:
                yield 0.8;
            case 10:
                yield 0.77;
            default:
                yield 1.0;
        };
        final int CARS_EACH_HOUR = 221;
        return  speed*CARS_EACH_HOUR*production;
    }

    public int workingItemsPerMinute(int speed) {
        return (int)productionRatePerHour(speed)/60;
    }
} 
 