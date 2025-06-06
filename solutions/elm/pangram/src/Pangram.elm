module Pangram exposing (isPangram)

import Set


isPangram : String -> Bool
isPangram sentence =
    String.toList sentence
        |> List.filter Char.isAlpha
        |> List.map Char.toLower
        |> Set.fromList
        |> Set.size
        |> (==) 26
