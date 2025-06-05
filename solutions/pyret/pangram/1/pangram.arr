provide: is-pangram end

import lists as L
import sets as S

LOWERCASE = string-explode("abcdefghijklmnopqrstuvwxyz")

fun is-pangram(phrase :: String) -> Boolean:
  chars = string-explode(string-to-lower(phrase))
  unique-chars = S.list-to-set(chars)
  L.all(
    lam(char): unique-chars.member(char) end,
    LOWERCASE)
end
