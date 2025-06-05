provide: steps end

fun steps(n :: NumInteger) -> NumInteger:
  fun steps-recurse(current, acc):
    ask:
      | current == 1 then:
        acc
      | num-modulo(current, 2) == 0 then:
        steps-recurse(current / 2, acc + 1)
      | otherwise:
        steps-recurse((3 * current) + 1, acc + 1)
    end
  end

  if n > 0:
    steps-recurse(n, 0)
  else:
    raise("Only positive numbers are allowed")
  end
end