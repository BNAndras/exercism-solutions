module RolePlayingGame exposing (Player, castSpell, introduce, revive)


type alias Player =
    { name : Maybe String
    , level : Int
    , health : Int
    , mana : Maybe Int
    }


introduce : Player -> String
introduce { name } =
    case name of
        Nothing ->
            "Mighty Magician"

        Just someName ->
            someName


revive : Player -> Maybe Player
revive player =
    if player.health > 0 then
        Nothing

    else
        Just
            { player
                | health = 100
                , mana =
                    if player.level >= 10 then
                        Just 100

                    else
                        Nothing
            }


castSpell : Int -> Player -> ( Player, Int )
castSpell manaCost player =
    case player.mana of
        Nothing ->
            let
                finalHealth =
                    max 0 (player.health - manaCost)
            in
            ( { player | health = finalHealth }, 0 )

        Just mana ->
            if mana >= manaCost then
                let
                    finalMana =
                        Just (mana - manaCost)

                    damage =
                        2 * manaCost
                in
                ( { player | mana = finalMana }, damage )

            else
                ( player, 0 )
