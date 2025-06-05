provide: score end

include string-dict

LETTER-SCORES :: StringDict<NumInteger> = [string-dict: 
  "A", 1,
  "E", 1,
  "I", 1,
  "O", 1,
  "U", 1,
  "L", 1,
  "N", 1,
  "R", 1,
  "S", 1,
  "T", 1,    
  "D", 2,
  "G", 2,
  "B", 3,
  "C", 3,
  "M", 3,
  "P", 3,
  "F", 4,
  "H", 4,
  "V", 4,
  "W", 4,
  "Y", 4,
  "K", 5,
  "J", 8,
  "X", 8,
  "Q", 10,
  "Z", 10]

fun score(word :: String) -> NumInteger:
  counts = string-explode(string-toupper(word)).foldl(
    lam(letter, frequencies):
      new-value = frequencies.get(letter).or-else(0) + 1
      frequencies.set(letter, new-value)
    end,
    [string-dict: ]
   )

  counts.keys().to-list().foldl(
    lam(letter, result):
      points = LETTER-SCORES.get(letter).or-else(0)
      result + (counts.get-value(letter) * points)
    end,
    0)
end
