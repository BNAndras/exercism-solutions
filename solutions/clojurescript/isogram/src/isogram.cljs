(ns isogram
  (:require [clojure.string :refer [lower-case]]))

(defn isogram? 
  [word]
  "Checks if a word has no repeating letters." 
  (->> word
      (lower-case)
      (remove #{\space\-})
      (apply distinct?)))
