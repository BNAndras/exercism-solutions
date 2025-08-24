import gleam/list
import gleam/string

pub type Robot {
  Robot(direction: Direction, position: Position)
}

pub type Direction {
  North
  East
  South
  West
}

pub type Position {
  Position(x: Int, y: Int)
}

pub fn create(direction: Direction, position: Position) -> Robot {
  Robot(direction, position)
}

pub fn move(
  direction: Direction,
  position: Position,
  instructions: String,
) -> Robot {
  list.fold(
    string.to_graphemes(instructions),
    create(direction, position),
    fn(acc, instruction) {
      case instruction, acc.direction {
        "A", North ->
          Robot(..acc, position: Position(acc.position.x, acc.position.y + 1))
        "A", East ->
          Robot(..acc, position: Position(acc.position.x + 1, acc.position.y))
        "A", South ->
          Robot(..acc, position: Position(acc.position.x, acc.position.y - 1))
        "A", West ->
          Robot(..acc, position: Position(acc.position.x - 1, acc.position.y))
        "L", North -> Robot(..acc, direction: West)
        "L", East -> Robot(..acc, direction: North)
        "L", South -> Robot(..acc, direction: East)
        "L", West -> Robot(..acc, direction: South)
        "R", North -> Robot(..acc, direction: East)
        "R", East -> Robot(..acc, direction: South)
        "R", South -> Robot(..acc, direction: West)
        "R", West -> Robot(..acc, direction: North)
        _, _ -> acc
      }
    },
  )
}
