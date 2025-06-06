module LuigisLusciousLasagna exposing (remainingTimeInMinutes)

{- Returns how many minutes until the lasagna is done depending on the number of layers and time elapsed since cooking started -}


remainingTimeInMinutes : Int -> Int -> Int
remainingTimeInMinutes layers timeElapsed =
    let
        expectedMinutesInOven =
            40

        preparationTimeInMinutes =
            2 * layers
    in
    preparationTimeInMinutes + expectedMinutesInOven - timeElapsed
