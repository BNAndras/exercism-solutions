(ns isogram)

(require '[clojure.string :as str])

(defn isogram?
  [word]
  (let [cleaned (str/lower-case (str/replace word #"(?u)[^\p{Letter}]" ""))]
  (= (count cleaned) (count (distinct cleaned)))))