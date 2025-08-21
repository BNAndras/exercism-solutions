class QueenAttack
  constructor: (@queen) ->
    throw 'row not positive' unless @queen.row >= 0
    throw 'row not on board' unless @queen.row <= 7
    throw 'column not positive' unless @queen.column >= 0
    throw 'column not on board' unless @queen.column <= 7

  canAttack: (otherQueen) ->
    @queen.row == otherQueen.queen.row or
      @queen.column == otherQueen.queen.column or
      Math.abs(@queen.row - otherQueen.queen.row) == Math.abs(@queen.column - otherQueen.queen.column)

module.exports = QueenAttack
