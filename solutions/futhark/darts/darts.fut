def score (x: f64) (y: f64): i32 =
  let distance = (x * x + y * y) in
    if distance <= 1.0 then 10
    else if distance <= 25.0 then 5
    else if distance <= 100.0 then 1
    else 0
