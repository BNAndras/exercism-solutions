import gleam/list
import gleam/string

pub fn is_isogram(phrase phrase: String) -> Bool {
  let letters =
    phrase
    |> string.lowercase
    |> string.replace(" ", "")
    |> string.replace("-", "")
    |> string.to_graphemes

  { letters |> list.length } == { letters |> list.unique |> list.length }
}
