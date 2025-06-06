module Leap exposing (isLeapYear)

{- Returns True if the passed Gregorian calendar year is a leap year (i.e. it has an extra day for a total of 366 days -}


isLeapYear : Int -> Bool
isLeapYear year =
    let
        divisibleBy n =
            modBy n year == 0
    in
    divisibleBy 4 && not (divisibleBy 100) || divisibleBy 400
