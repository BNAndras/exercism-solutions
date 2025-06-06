(ns leap)

(defn- divides? [m n]
    (zero? (mod n m))
)

(defn leap-year? [year]
  (and (divides? 4 year)
       (or (not (divides? 100 year))
           (divides? 400 year)))
)