module Darts {
  proc score(x: real, y: real) {
    const distance = sqrt(x ** 2 + y ** 2);

    if distance <= 1 then return 10;
    if distance <= 5 then return 5;
    if distance <= 10 then return 1;
    return 0;
  }
}
