const EARTH_ORBITAL_LENGTH = 31_557_600;

type Planet = keyof typeof OrbitalRatios

enum OrbitalRatios {
  mercury = 0.2408467,
  venus = 0.61519726,
  earth = 1.0,
  mars = 1.8808158,
  jupiter = 11.862615,
  saturn = 29.447498,
  uranus = 84.016846,
  neptune = 164.79132,
}

export function age(planet: Planet, seconds: number): number {
  const localOrbitalLength = OrbitalRatios[planet] * EARTH_ORBITAL_LENGTH
  const localAge = seconds / localOrbitalLength
  return Number(localAge.toFixed(2));
}