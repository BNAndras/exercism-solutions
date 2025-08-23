pub fn expected_minutes_in_oven() -> Int {
  40
}

fn minutes_per_layer() -> Int {
  2
}

pub fn remaining_minutes_in_oven(time_elapsed: Int) -> Int {
  expected_minutes_in_oven() - time_elapsed
}

pub fn preparation_time_in_minutes(layers: Int) -> Int {
  layers * minutes_per_layer()
}

pub fn total_time_in_minutes(layers: Int, time_elapsed: Int) -> Int {
  preparation_time_in_minutes(layers) + time_elapsed
}

pub fn alarm() -> String {
  "Ding!"
}
