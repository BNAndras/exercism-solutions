class SpaceAge {

    private static final double earthAgeSeconds = 31_557_600.0;

    private final double earthAge;

    SpaceAge(double seconds) {
        this.earthAge = seconds / earthAgeSeconds;
    }

    private double getEarthAge() { return this.earthAge; }

    double onEarth() {
        return getEarthAge();
    }

    double onMercury() {
        return getEarthAge() / 0.2408467;
    }

    double onVenus() {
        return getEarthAge() / 0.61519726;
    }

    double onMars() {
        return getEarthAge() / 1.8808158;
    }

    double onJupiter() {
        return getEarthAge() / 11.862615;
    }

    double onSaturn() {
        return getEarthAge() / 29.447498;
    }

    double onUranus() {
        return getEarthAge() / 84.016846;
    }

    double onNeptune() {
        return getEarthAge() / 164.7913;
    }
}