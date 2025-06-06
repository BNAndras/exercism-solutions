use context essentials2020

provide: abbreviate end


fun abbreviate(phrase :: String) -> String:
  string-split-all(phrase, " ").foldl(
    lam(word, abbreviation):
      cleaned = string-replace(word, "_", "")
      tokens = string-split-all(cleaned, "-")
      
      abbreviated = tokens.foldl(
        lam(token, acc):
            ask:
            | token <> "" then:
              first = string-char-at(token, 0)
              acc + string-to-upper(first)
            | otherwise:
              acc
            end
        end,
        "")
      
      abbreviation + abbreviated
    end,
    "")
end
