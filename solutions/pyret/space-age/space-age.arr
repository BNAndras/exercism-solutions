provide: on-planet end

include string-dict

SECONDS-IN-EARTH-ORBITAL = 31557600

ORBITAL-RATIOS :: StringDict<NumNonNegative> =
  [string-dict:
    "Mercury",  0.2408467,
    "Venus",    0.61519726,
    "Earth",    1,
    "Mars",     1.8808158,
    "Jupiter",  11.862615,
    "Saturn",   29.447498,
    "Uranus",   84.016846,
    "Neptune",  164.79132]

fun on-planet(planet :: String, seconds :: NumNonNegative) -> NumNonNegative:
  cases(Option) ORBITAL-RATIOS.get(planet):
    | none =>
        raise("not a planet")
    | some(ratio) => 
        (seconds / SECONDS-IN-EARTH-ORBITAL) / ratio
  end
end
