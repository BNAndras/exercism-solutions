(ns bird-watcher)

(def last-week
  "Last week's bird counts"
  [0 2 5 3 7 8 4])

(defn today [birds]
  "Today's bird count"
  (peek birds))

(defn inc-bird [birds]
  "Increment today's bird count by one"
  (conj (pop birds) (inc (today birds))))

(defn day-without-birds? [birds]
  "Check if there's a day with no birds logged"
  (not (every? pos? birds)))

(defn n-days-count [birds n]
  "Return total birds seen in the first n days from the beginning of the week"
  (reduce + (take n birds)))

(defn busy-days [birds]
  "Count the number of busy days"
  (count (filter #(> % 4)  birds)))

(defn odd-week? [birds]
  "Check if the week has alternating 1 and 0 counts"
  (= (take (count birds) (cycle [1 0]))  birds))
