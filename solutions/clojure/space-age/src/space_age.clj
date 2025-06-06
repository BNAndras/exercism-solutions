(ns space-age)

(def ^:const seconds-in-earth-year 31557600)

(defn- get-local-age [ratio earth-seconds]
  (/ earth-seconds ratio seconds-in-earth-year))

(def on-mercury 
  "Local age on Mercury represented by passed seconds on Earth"
  (partial get-local-age 0.2408467))

(def on-venus
  "Local age on Venus represented by passed seconds on Earth"
  (partial get-local-age 0.61519726))

(def on-earth
  "Local age on Earth represented by passed seconds on Earth"
  (partial get-local-age 1))

(def on-mars
  "Local age on Mars represented by passed seconds on Earth"
  (partial get-local-age 1.8808158))  

(def on-jupiter
  "Local age on Jupiter represented by passed seconds on Earth"
  (partial get-local-age 11.862615))

(def on-saturn
  "Local age on Saturn represented by passed seconds on Earth"
  (partial get-local-age 29.447498))

(def on-neptune
  "Local age on Neptune represented by passed seconds on Earth"
  (partial get-local-age 164.79132))  

(def on-uranus
  "Local age on Uranus represented by passed seconds on Earth"
  (partial get-local-age 84.016846))
