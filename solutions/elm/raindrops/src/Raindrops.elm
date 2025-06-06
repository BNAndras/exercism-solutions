module Raindrops exposing (raindrops)

{- Returns the number as a String of itself or a String containing raindrop sounds if the number has factors of 3, 5, or 7 -}


raindrops : Int -> String
raindrops number =
    let
        sections =
            [ getFactorWord 3 number "Pling"
            , getFactorWord 5 number "Plang"
            , getFactorWord 7 number "Plong"
            ]

        response =
            String.concat sections
    in
    if response /= "" then
        response

    else
        String.fromInt number



{- Returns passed word if n1 is a factor of n2, otherwise returning an empty string -}


getFactorWord : Int -> Int -> String -> String
getFactorWord n1 n2 word =
    if isFactorOf n1 n2 then
        word

    else
        ""



{- Returns True if n1 is a factor of n2 -}


isFactorOf : Int -> Int -> Bool
isFactorOf n1 n2 =
    modBy n1 n2 == 0
