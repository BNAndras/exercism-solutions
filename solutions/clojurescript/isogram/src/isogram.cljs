(ns isogram)

(require '[clojure.string :as str])

(defn isogram?
  [word]
  "Checks if a word has no repeating letters."
  (let [cleaned (->> word
                    (str/lower-case)
                    (filter #(re-find #"(?u)[\p{Letter}]" %)))]
  (= (distinct cleaned) cleaned)))
