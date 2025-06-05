provide: distance end

import lists as L

fun distance(first-strand :: String, second-strand :: String) -> Number:
  ask:
    | string-length(first-strand) <> string-length(second-strand) then:
      raise("Strands must be of equal length.")
    | (first-strand == "") and (second-strand <> "") then:
      raise("Strands must be of equal length.")
    | (first-strand <> "") and (second-strand == "") then:
      raise("Strands must be of equal length.")
    | otherwise:
      L.fold2(
        lam(acc, first, second):
          ask:
            | first <> second then:
              acc + 1
            | otherwise:
              acc
          end
        end,
        0,
        string-explode(first-strand),
        string-explode(second-strand))
  end
end
