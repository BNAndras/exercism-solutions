def two_fer (name: []u8): []u8 =
  let person = if length name == 0 then "you" else name
    in "One for " ++ person ++ ", one for me."