module Hamming exposing (distance)


distance : String -> String -> Result String Int
distance left right =
    if not (isEqualLength left right) then
        Err "strands must be of equal length"

    else
        Ok (countUnmatchedChars left right)


countUnmatchedChars : String -> String -> Int
countUnmatchedChars s1 s2 =
    String.toList s1
        |> List.map2 (/=)
            (String.toList s2)
        |> List.filter identity
        |> List.length


isEqualLength : String -> String -> Bool
isEqualLength s1 s2 =
    String.length s1 == String.length s2
