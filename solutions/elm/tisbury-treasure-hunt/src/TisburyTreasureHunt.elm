module TisburyTreasureHunt exposing (..)

-- Consider defining a type alias for TreasureLocation,
-- Treasure, PlaceLocation and Place,
-- and using them in the function type annotations


type alias Place =
    ( Label, PlaceLocation )


type alias Treasure =
    ( Label, TreasureLocation )


type alias Label =
    String


type alias PlaceLocation =
    ( Column, Row )


type alias TreasureLocation =
    ( Row, Column )


type alias Column =
    Char


type alias Row =
    Int


placeLocationToTreasureLocation : PlaceLocation -> TreasureLocation
placeLocationToTreasureLocation ( col, row ) =
    ( row, col )


treasureLocationMatchesPlaceLocation : PlaceLocation -> TreasureLocation -> Bool
treasureLocationMatchesPlaceLocation placeLocation treasureLocation =
    placeLocation
        |> placeLocationToTreasureLocation
        |> (==) treasureLocation


countPlaceTreasures : Place -> List Treasure -> Int
countPlaceTreasures ( _, placeLocation ) treasures =
    treasures
        |> List.map Tuple.second
        |> List.filter (treasureLocationMatchesPlaceLocation placeLocation)
        |> List.length


specialCaseSwapPossible : Treasure -> Place -> Treasure -> Bool
specialCaseSwapPossible ( foundTreasure, _ ) ( place, _ ) ( desiredTreasure, _ ) =
    case ( foundTreasure, place, desiredTreasure ) of
        ( "Brass Spyglass", "Abandoned Lighthouse", _ ) ->
            True

        ( "Amethyst Octopus", "Stormy Breakwater", "Crystal Crab" ) ->
            True

        ( "Amethyst Octopus", "Stormy Breakwater", "Glass Starfish" ) ->
            True

        ( "Vintage Pirate Hat", "Harbor Managers Office", "Model Ship in Large Bottle" ) ->
            True

        ( "Vintage Pirate Hat", "Harbor Managers Office", "Antique Glass Fishnet Float" ) ->
            True

        _ ->
            False
