import gleam/string

pub fn reverse(value: String) -> String {
  value |> string.to_graphemes |> do_reverse([]) |> string.join("")
}

fn do_reverse(items: List(String), acc: List(String)) -> List(String) {
  case items {
    [] -> acc
    [first, ..rest] -> do_reverse(rest, [first, ..acc])
  }
}