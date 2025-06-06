module TwoFer exposing (twoFer)


twoFer : Maybe String -> String
twoFer name =
    let
        addressee =
            Maybe.withDefault "you" name
    in
    "One for " ++ addressee ++ ", one for me."
