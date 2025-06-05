provide: square-of-sum, sum-of-squares, difference-of-squares end

fun square-of-sum(number :: NumInteger) -> NumInteger:
  sum = (number * (number + 1)) / 2
  sum * sum
end

fun sum-of-squares(number :: NumInteger) -> NumInteger:
  (number * (number + 1) * ((2 * number) + 1)) / 6
end

fun difference-of-squares(number :: NumInteger) -> NumInteger:
  square-of-sum(number) - sum-of-squares(number)
end
