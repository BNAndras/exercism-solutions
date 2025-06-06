(ns raindrops)

(def rules
  "Rules consisting of a factor and a representative sound string"
  `[[3 "Pling"] [5 "Plang"] [7 "Plong"]])

(defn- get-sound
  [n [factor sound]]
  "Return a sound if n is divisible by factor or an empty string otherwise"
  (if (zero? (mod n factor))
     sound
      ""))

(defn convert
  [n]
  "Convert a number into a string based on its factors, each representing a sound. If no factors are found, the number's digits are returned as the string"
  (let [sounds (reduce #(str %1 (get-sound n %2)) "" rules)]
    (if-not (empty? sounds)
      sounds
      (str n))))