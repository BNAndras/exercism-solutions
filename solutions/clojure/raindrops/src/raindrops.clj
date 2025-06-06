(ns raindrops)

(def rules
  "Rules consisting of a factor and a representative sound"
  `[[3 "Pling"] [5 "Plang"] [7 "Plong"]])

(defn- get-sound
  [n [factor sound]]
  "Return sound if n is divisible by factor"
  (when (zero? (mod n factor))
     sound)
)

(defn convert
  [n]
  "Return string of sounds representing a number's factors or the digits if not divisible by 3, 5, or 7"
  (let [sounds (->> rules
                    (reduce #(conj %1 (get-sound n %2)) `[])
                    (filter (complement nil?)))]
    (if (empty? sounds)
      (str n)
      (apply str sounds))))
  
