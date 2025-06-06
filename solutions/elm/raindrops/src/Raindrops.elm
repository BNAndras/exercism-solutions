module Raindrops exposing (raindrops)

{- Returns the number as a String of itself or a String containing raindrop sounds if the number has factors of 3, 5, or 7 -}


raindrops : Int -> String
raindrops number =
    let
        dropSounds =
            [ getDropSound "Pling" 3
            , getDropSound "Plang" 5
            , getDropSound "Plong" 7
            ]
    in
    dropSounds
        |> List.map ((|>) number)
        |> String.concat
        |> (\sounds ->
                if String.isEmpty sounds then
                    String.fromInt number

                else
                    sounds
           )



{- Returns passed word if n1 is a factor of n2, otherwise returning an empty string -}


getDropSound : String -> Int -> Int -> String
getDropSound word n1 n2 =
    let
        isFactor =
            modBy n1 n2 == 0
    in
    if isFactor then
        word

    else
        ""
