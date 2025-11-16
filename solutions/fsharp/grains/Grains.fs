module Grains

let square (n: int): Result<uint64,string> =
    match n with
    | _ when n >= 1 && n <= 64 -> 2.0 ** float (n - 1) |> uint64 |> Ok
    | _ -> Error "square must be between 1 and 64"
  
let total: Result<uint64,string> = 2.0 ** 64.0 - 1.0 |> uint64 |> Ok
