public class CarsAssemble {

    private static final int baseRate = 221;
    
    public double productionRatePerHour(int speed) {
        double rate = 0.0;
        if (1 <= speed && speed <= 4) {
            rate = 1.00;
        } else if (speed < 9) {
            rate = 0.9;
        } else if (speed == 9) {
            rate = 0.8;
        } else if (speed == 10) {
            rate = 0.77;
        }
            
        return speed * baseRate * rate;
    }

    public int workingItemsPerMinute(int speed) {
         return (int) productionRatePerHour(speed) / 60;
    }
}
