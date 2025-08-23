import gleam/int

pub fn convert(number: Int) -> String {
  let result =
    case { number % 3 == 0 } {
      True -> "Pling"
      _ -> ""
    }
    <> case { number % 5 == 0 } {
      True -> "Plang"
      _ -> ""
    }
    <> case { number % 7 == 0 } {
      True -> "Plong"
      _ -> ""
    }

  case result {
    "" -> int.to_string(number)
    _ -> result
  }
}
