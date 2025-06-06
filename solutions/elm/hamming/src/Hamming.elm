module Hamming exposing (distance)


distance : String -> String -> Result String Int
distance left right =
    if not (isEqualLength left right) then
        Err "strands must be of equal length"

    else
        Ok (countUnmatchedChars left right)


countUnmatchedChars : String -> String -> Int
countUnmatchedChars left right =
    String.toList left
        |> List.map2 (/=)
            (String.toList right)
        |> List.filter identity
        |> List.length


isEqualLength : String -> String -> Bool
isEqualLength left right =
    String.length left == String.length right
