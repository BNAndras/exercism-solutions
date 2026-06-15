expected_minutes_in_oven <- function() {
  60
}

remaining_time_in_minutes <- function(time_elapsed) {
  expected_minutes_in_oven() - time_elapsed
}

prep_time_in_minutes <- function(number_of_layers) {
  number_of_layers * 2
}

elapsed_time_in_minutes <- function(number_of_layers, time_in_oven) {
  prep_time_in_minutes(number_of_layers) + time_in_oven
}
