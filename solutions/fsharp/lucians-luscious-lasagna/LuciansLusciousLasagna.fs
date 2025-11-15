module LuciansLusciousLasagna

let expectedMinutesInOven = 40

let remainingMinutesInOven timeElapsed = expectedMinutesInOven - timeElapsed

let preparationTimeInMinutes layerCount = 2 * layerCount

let elapsedTimeInMinutes layerCount timeElapsed = preparationTimeInMinutes layerCount + timeElapsed