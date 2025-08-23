import gleam/option.{type Option, Some}

pub fn two_fer(name: Option(String)) -> String {
  case name {
    Some(n) -> "One for " <> n <> ", one for me."
    _ -> Some("you") |> two_fer
  }
}
