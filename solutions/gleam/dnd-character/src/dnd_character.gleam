import gleam/float
import gleam/int
import gleam/list
import gleam/result

pub type Character {
  Character(
    charisma: Int,
    constitution: Int,
    dexterity: Int,
    hitpoints: Int,
    intelligence: Int,
    strength: Int,
    wisdom: Int,
  )
}

pub fn generate_character() -> Character {
  let constitution = ability()
  Character(
    charisma: ability(),
    constitution: constitution,
    dexterity: ability(),
    hitpoints: 10 + modifier(constitution),
    intelligence: ability(),
    strength: ability(),
    wisdom: ability(),
  )
}

pub fn modifier(score: Int) -> Int {
  score
  |> int.to_float
  |> float.subtract(10.0)
  |> float.divide(2.0)
  |> result.unwrap(0.0)
  |> float.floor
  |> float.round
}

pub fn ability() -> Int {
  list.repeat(0, 4)
  |> list.map(fn(_) { int.random(6) + 1 })
  |> list.sort(int.compare)
  |> list.drop(1)
  |> int.sum()
}
