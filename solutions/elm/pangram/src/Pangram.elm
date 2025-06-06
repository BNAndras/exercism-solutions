module Pangram exposing (isPangram)

import Set exposing (size)


isPangram : String -> Bool
isPangram sentence =
    String.toList sentence
        |> List.filter Char.isAlpha
        |> List.map Char.toLower
        |> Set.fromList
        |> (\s -> size s == 26)
