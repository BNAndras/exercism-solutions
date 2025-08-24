pub fn egg_count(number: Int) -> Int {
  do_egg_count(number, 0)
}

fn do_egg_count(number: Int, acc: Int) -> Int {
  case number {
    0 -> acc
    _ -> {
      let updated_acc = case number % 2 {
        1 -> acc + 1
        _ -> acc
      }
      do_egg_count(number / 2, updated_acc)
    }
  }
}
