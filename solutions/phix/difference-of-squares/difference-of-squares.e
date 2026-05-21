global function square_of_sum(integer n)
    integer sum = n * (n + 1) / 2
    return sum * sum
end function

global function sum_of_squares(integer n)
  return n * (n + 1) * (2 * n + 1) / 6
end function

global function difference_of_squares(integer n)
  return square_of_sum(n) - sum_of_squares(n)
end function
