module CarsAssemble

let successRate (speed: int): float =
    match speed with
     | 0 -> 0
     | _ when speed < 5 -> 1.00
     | _ when speed < 9 -> 0.90
     | 9 -> 0.8
     | 10 -> 0.77
     | _ -> 0
 
let productionRatePerHour (speed: int): float =
    let baseItemsPerHour = 221 in
    let idealItemsPerHour = float (baseItemsPerHour * speed) in
        (successRate speed) * idealItemsPerHour

let workingItemsPerMinute (speed: int): int =
    let itemsPerHour = productionRatePerHour speed in
        int (itemsPerHour / 60.0)
