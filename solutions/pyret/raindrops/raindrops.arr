provide: convert end

RULES = [list: {3;"Pling"}, {5;"Plang"}, {7;"Plong"}]

fun convert(n :: NumInteger) -> String:
  sounds = RULES.foldl(
    lam(elt, acc):
      sound = 
        if num-modulo(n, elt.{0}) == 0:
          elt.{1}
        else:
          ""
      end
      
      acc + sound
    end,
    "")

  if string-length(sounds) == 0:
    num-to-string(n)
  else:
    sounds
  end
end
