pub type TreasureChest(treasure) {
  TreasureChest(String, treasure)
}

pub type UnlockResult(treasure) {
  Unlocked(treasure)
  WrongPassword
}

pub fn get_treasure(
  chest: TreasureChest(treasure),
  guess: String,
) -> UnlockResult(treasure) {
  case chest {
    TreasureChest(password, treasure) if password == guess -> Unlocked(treasure)
    _ -> WrongPassword
  }
}
