(ns raindrops)

(def ^:private rules
  "Rules consisting of a factor and a representative sound string"
  `[[3 "Pling"] [5 "Plang"] [7 "Plong"]])

(defn convert
  [n]
  "Convert a number into a string based on its factors, each representing a sound. If no factors are found, the number's digits are returned as the string"
  (letfn [(is-factor? [factor]
            (zero? (mod n factor)))
          (get-sound [[number sound]]
            (if (is-factor? number)
               sound
                ""))]
    (let [sounds (reduce #(str %1 (get-sound %2)) "" rules)]
      (if-not (empty? sounds)
        sounds
        (str n)))))
