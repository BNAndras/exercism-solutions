module Triangle exposing (Triangle(..), isIsosceles, triangleKind)

import Set


type Triangle
    = Equilateral
    | Isosceles
    | Scalene


triangleKind : number -> number -> number -> Result String Triangle
triangleKind x y z =
    if not (hasValidLengths x y z) then
        Err "Invalid lengths"

    else if not (isValidTriangle x y z) then
        Err "Violates inequality"

    else
        identifyTriangle x y z |> Ok


identifyTriangle : number -> number -> number -> Triangle
identifyTriangle x y z =
    if isEquilateral x y z then
        Equilateral

    else if isIsosceles x y z then
        Isosceles

    else
        Scalene


isEquilateral : number -> number -> number -> Bool
isEquilateral a b c =
    Set.fromList [ a, b, c ]
        |> Set.size
        |> (==) 1


isIsosceles : number -> number -> number -> Bool
isIsosceles a b c =
    Set.fromList [ a, b, c ]
        |> Set.size
        |> (==) 2


hasValidLengths : number -> number -> number -> Bool
hasValidLengths a b c =
    List.all aboveZero [ a, b, c ]


aboveZero : number -> Bool
aboveZero n =
    n > 0


isValidTriangle : number -> number -> number -> Bool
isValidTriangle a b c =
    List.all identity [ a + b > c, a + c > b, b + c > a ]
