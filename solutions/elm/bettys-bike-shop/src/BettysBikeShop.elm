module BettysBikeShop exposing (penceToPounds, poundsToString)

import String exposing (fromFloat)



{- Converts an Int of pence sterling to a Float of pound sterling -}


penceToPounds : Int -> Float
penceToPounds pence =
    toFloat pence / 100



{- Prepends the pound sterling currency symbol to the passed Float of pounds -}


poundsToString : Float -> String
poundsToString pounds =
    "£" ++ fromFloat pounds
