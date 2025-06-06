module LuciansLusciousLasagna exposing (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes)


expectedMinutesInOven : Int
expectedMinutesInOven =
    40


preparationTimeInMinutes : Int -> Int
preparationTimeInMinutes n =
    2 * n


elapsedTimeInMinutes : Int -> Int -> Int
elapsedTimeInMinutes layers timeInOven =
    timeInOven + preparationTimeInMinutes layers
