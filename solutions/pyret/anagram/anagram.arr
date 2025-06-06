provide: find-anagrams end

fun find-anagrams(phrase :: String, candidates :: List<String>) -> List<String>:
  phrase-lowered = string-explode(string-to-lower(phrase))
  phrase-lowered-sorted = phrase-lowered.sort()

  detect-anagram = lam(elt :: String, acc :: List<String>) -> List<String>:
    elt-lowered = string-explode(string-to-lower(elt))

    is-anagram = lam() -> Boolean:
      different-order = phrase-lowered <> elt-lowered
      same-letters = phrase-lowered-sorted == elt-lowered.sort()

      different-order and same-letters
    end

    if is-anagram(): acc.push(elt) else: acc end
  end

  candidates.foldl(detect-anagram, [list: ]).reverse()
end