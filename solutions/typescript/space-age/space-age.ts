const EARTH_ORBITAL_LENGTH = 31_557_600;

type Planet = keyof typeof OrbitalPeriodRatios

enum OrbitalPeriodRatios {
  mercury = 0.2408467 * EARTH_ORBITAL_LENGTH,
  venus = 0.61519726 * EARTH_ORBITAL_LENGTH,
  earth = 1.0 * EARTH_ORBITAL_LENGTH,
  mars = 1.8808158 * EARTH_ORBITAL_LENGTH,
  jupiter = 11.862615 * EARTH_ORBITAL_LENGTH,
  saturn = 29.447498 * EARTH_ORBITAL_LENGTH,
  uranus = 84.016846 * EARTH_ORBITAL_LENGTH,
  neptune = 164.79132 * EARTH_ORBITAL_LENGTH,
}

export function age(planet: Planet, seconds: number): number {
  const localOrbitalInSeconds = OrbitalPeriodRatios[planet]
  const localAge = seconds / localOrbitalInSeconds

  return +localAge.toFixed(2);
}