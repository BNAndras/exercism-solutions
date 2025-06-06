provide: convert end

data Rule: rule(factor, sound) end

RULES = [list: rule(3, "Pling"), rule(5, "Plang"), rule(7, "Plong")]

fun convert(n :: NumInteger) -> String:
  sounds = RULES.foldl(
    lam(elt, acc):
      sound = 
        if num-modulo(n, elt.factor) == 0:
          elt.sound
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
