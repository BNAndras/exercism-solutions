#include "leap.h"

namespace leap {

    bool is_divisible_by(int number, int divisor) {
        return (number % divisor) == 0;
    }

    bool is_leap_year(int year) {
        return is_divisible_by(year, 4) && (!is_divisible_by(year, 100) || is_divisible_by(year, 400));
    }
}  // namespace leap
