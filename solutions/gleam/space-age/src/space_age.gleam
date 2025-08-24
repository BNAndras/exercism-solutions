pub type Planet {
  Mercury
  Venus
  Earth
  Mars
  Jupiter
  Saturn
  Uranus
  Neptune
}

pub fn age(planet: Planet, seconds: Float) -> Float {
  case planet {
    Earth -> seconds /. earth_year()
    Mercury -> age(Earth, seconds) /. 0.2408467
    Venus -> age(Earth, seconds) /. 0.61519726
    Mars -> age(Earth, seconds) /. 1.8808158
    Jupiter -> age(Earth, seconds) /. 11.862615
    Saturn -> age(Earth, seconds) /. 29.447498
    Uranus -> age(Earth, seconds) /. 84.016846
    Neptune -> age(Earth, seconds) /. 164.79132
  }
}

fn earth_year() -> Float {
  31_557_600.0
}
