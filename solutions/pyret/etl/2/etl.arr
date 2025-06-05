provide: my-translate end

include string-dict

fun my-translate(legacy :: StringDict<List<String>>) -> StringDict<String>:
  legacy.keys().to-list().foldl(
    lam(score, acc):
      legacy.get-value(score).foldl(
        lam(char, output):
          output.set(string-tolower(char), score)
        end,
        acc)
    end,
  [string-dict: ])
end
