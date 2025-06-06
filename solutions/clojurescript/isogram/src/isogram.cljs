(ns isogram)

(defn isogram? 
  [word]
  "Checks if a word has no repeating letters." 
  (->> word
      (.toLowerCase)
      (remove #(re-find #"(?u)[^\p{Letter}]" %))
      (apply distinct?)))