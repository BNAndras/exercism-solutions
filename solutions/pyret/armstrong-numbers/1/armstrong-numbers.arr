provide: is-armstrong-number end

fun is-armstrong-number(number :: NumInteger) -> Boolean:
  digits = number
    ^ num-to-string(_)
    ^ string-explode(_)
   
  sum = digits.foldl(
    lam(elt, acc):
      cases(Option) string-to-number(elt):
        | some(digit) => acc + num-expt(digit,  digits.length())
        | none => raise("unable to convert character to digit")
      end
    end,
    0)

  sum == number
end
