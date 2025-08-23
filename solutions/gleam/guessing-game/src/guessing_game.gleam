pub fn reply(guess: Int) -> String {
  case guess {
    42 -> "Correct"
    n if n < 41 -> "Too low"
    n if n > 43 -> "Too high"
    _ -> "So close"
  }
}
