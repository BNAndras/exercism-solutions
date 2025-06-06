module Leap {
  proc isLeapYear(year : int) {
    proc isDivisibleBy(n : int) {
      return year % n == 0;
    }
    return isDivisibleBy(4) && (!isDivisibleBy(100) || isDivisibleBy(400));
  }
}
