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
  (true? (some zero? birds)))

(defn n-days-count [birds n]
  "Return total birds seen in the first n days from the beginning of the week"
  (reduce + (take n birds)))

(defn busy-day? [day-count]
  "Check if a day was a busy one for bird-watching"
  (> day-count 4))

(defn busy-days [birds]
  "Count the number of busy days"
  (count (filter busy-day? birds)))

(defn odd-week? [birds]
  "Check if the week has alternating 0 and 1 counts"
  (= `[1 0 1 0 1 0 1] birds))
