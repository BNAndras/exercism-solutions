(ns isogram)

(require '[clojure.string :as str])

(defn isogram?
  [word]
  "Checks if a word has no repeating letters."
  (let [cleaned (str/lower-case (str/replace word #"(?u)[^\p{Letter}]" ""))]
  (= (count cleaned) (count (distinct cleaned)))))