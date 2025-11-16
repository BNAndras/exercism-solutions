module GuessingGame

let reply (guess: int): string =
    match guess with
    | 42 -> "Correct"
    | _ when guess < 41 -> "Too low"
    | _ when guess > 43 -> "Too high"
    | _ -> "So close"
