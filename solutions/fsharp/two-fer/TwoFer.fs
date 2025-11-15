module TwoFer

let rec twoFer (input: string option): string =
    match input with
        | Some name -> $"One for {name}, one for me."
        | None -> Some "you" |> twoFer
