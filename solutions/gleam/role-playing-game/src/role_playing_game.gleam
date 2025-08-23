import gleam/int
import gleam/option.{type Option, None, Some}

pub type Player {
  Player(name: Option(String), level: Int, health: Int, mana: Option(Int))
}

pub fn introduce(player: Player) -> String {
  case player.name {
    Some(name) -> name
    _ -> "Mighty Magician"
  }
}

pub fn revive(player: Player) -> Option(Player) {
  case player.health {
    0 ->
      case player.level {
        level if level < 10 -> Some(Player(..player, health: 100))
        _ -> Some(Player(..player, health: 100, mana: Some(100)))
      }
    _ -> None
  }
}

pub fn cast_spell(player: Player, cost: Int) -> #(Player, Int) {
  case player.mana {
    Some(mana) if mana >= cost -> #(
      Player(..player, mana: Some(mana - cost)),
      2 * cost,
    )
    Some(_) -> #(player, 0)
    _ -> #(
      Player(
        ..player,
        health: int.clamp(player.health - cost, 0, player.health),
      ),
      0,
    )
  }
}
