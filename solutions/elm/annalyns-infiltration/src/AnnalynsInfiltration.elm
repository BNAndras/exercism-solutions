module AnnalynsInfiltration exposing (canFastAttack, canFreePrisoner, canSignalPrisoner, canSpy, stealthAttackDamage)

import List exposing (any)


canFastAttack : Bool -> Bool
canFastAttack knightIsAwake =
    not knightIsAwake


canSpy : Bool -> Bool -> Bool -> Bool
canSpy knightIsAwake archerIsAwake prisonerIsAwake =
    any identity [ knightIsAwake, archerIsAwake, prisonerIsAwake ]


canSignalPrisoner : Bool -> Bool -> Bool
canSignalPrisoner archerIsAwake prisonerIsAwake =
    not archerIsAwake && prisonerIsAwake


canFreePrisoner : Bool -> Bool -> Bool -> Bool -> Bool
canFreePrisoner knightIsAwake archerIsAwake prisonerIsAwake petDogIsPresent =
    let
        dogRescue =
            petDogIsPresent && not archerIsAwake

        sneakyRescue =
            prisonerIsAwake && not (knightIsAwake || archerIsAwake)
    in
    dogRescue || sneakyRescue


stealthAttackDamage : Bool -> Int
stealthAttackDamage annalynIsDetected =
    let
        regularDamage =
            7

        sneakDamage =
            12
    in
    if annalynIsDetected then
        regularDamage

    else
        sneakDamage
