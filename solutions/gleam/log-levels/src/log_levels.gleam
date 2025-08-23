import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[INFO]:" <> msg -> msg |> string.trim
    "[WARNING]:" <> msg -> msg |> string.trim
    "[ERROR]:" <> msg -> msg |> string.trim
    _ -> panic as "Unrecognized log level in passed message"
  }
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[INFO]:" <> _ -> "info"
    "[WARNING]:" <> _ -> "warning"
    "[ERROR]:" <> _ -> "error"
    _ -> panic as "Unrecognized log level in passed log_level"
  }
}

pub fn reformat(log_line: String) -> String {
  message(log_line) <> " (" <> log_level(log_line) <> ")"
}
