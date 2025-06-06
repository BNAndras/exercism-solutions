(ns isogram)

(defn isogram?
  [word]
  "Checks if a word has no repeating letters."
  (let [cleaned (->> word
                    (.toLowerCase)
                    (filter #(re-find #"(?u)[\p{Letter}]" %)))]
  (= (distinct cleaned) cleaned)))
