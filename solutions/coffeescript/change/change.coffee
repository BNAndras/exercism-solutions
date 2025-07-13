class Change
  @findFewestCoins: (coins, targetBalance) ->
    throw new Error "target can't be negative" if targetBalance < 0

    return [] if targetBalance is 0

    coins.sort()
    queue = [0]
    visited = {0: []}

    while queue.length > 0
      initialBalance = queue.shift()

      for coin in coins
        updatedBalance = initialBalance + coin
        continue if updatedBalance > targetBalance or visited[updatedBalance]

        usedCoins = visited[initialBalance].concat coin
        if updatedBalance is targetBalance
          usedCoins.sort (a, b) -> a - b
          return usedCoins

        visited[updatedBalance] = usedCoins
        queue.push updatedBalance

    throw new Error "can't make target with given coins"

module.exports = Change
