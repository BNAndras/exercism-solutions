(ns reverse-string)

(require '[clojure.string :as str])

(defn reverse-string
  [s]
   "Reverses string, treating Unicode surogate pairs as a single character"
  (str/reverse s))
