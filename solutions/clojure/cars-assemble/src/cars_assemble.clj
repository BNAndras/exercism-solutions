(ns cars-assemble)

(def base-rate 
  "The base hourly production rate for the assembly line"
  221)

(defn success-rate
  "Returns the assembly line's success rate depending on its speed"
  [speed]
  (cond
    (<= speed 0)  0.0
    (<= speed 4)  1.0
    (<= speed 8)  0.9
    (= speed 9)   0.8
    (= speed 10)  0.77
    :else 0.0))


(defn production-rate
  "Returns the assembly line's production rate per hour,
   taking into account its success rate"
  [speed]
  (* base-rate (* speed (success-rate speed))))


(defn working-items
  "Calculates how many working cars are produced per minute"
  [speed]
  (int (/ (production-rate speed) 60)))