global function square(integer n)
    if n < 1 or n > 64 then
        return "square must be between 1 and 64"
    end if
    return power(2, n - 1)
end function

global function totalgrains()
  return power(2, 64) - 1
end function
