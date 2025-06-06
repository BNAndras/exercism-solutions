module Gigasecond exposing (add)

import Time



{- Add a gigasecond (10^9 seconds) to the passed timestamp -}


add : Time.Posix -> Time.Posix
add timestamp =
    let
        gigaToMillis =
            10 ^ 12
    in
    timestamp
        |> Time.posixToMillis
        |> (+) gigaToMillis
        |> Time.millisToPosix
