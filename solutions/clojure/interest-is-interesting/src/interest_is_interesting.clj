(ns interest-is-interesting)

(defn interest-rate
  "Get annual savings account interest rate, depending on current balance"
  [balance]
  (cond (neg? balance)    -3.213
        (> 1000 balance)  0.5
        (> 5000 balance)  1.621
        :else             2.475))

(defn balance-update
  "Get amount to increment account balance annually"
  [balance]
  (* (abs balance) (bigdec (* (interest-rate balance) 0.01M))))

(defn annual-balance-update
  "Update account balance annually"
  [balance]
  (+ balance (balance-update balance)))

(defn base-donate-amount
  "Get base charity donation, depending on tax free percentage"
  [balance tax-free-percentage]
  (* balance tax-free-percentage 0.01))

(defn double-donation
  "Double the base charity donation"
  [balance tax-free-percentage]
  (* (base-donate-amount balance tax-free-percentage) 2))

(defn amount-to-donate
  "Get the annual charity donation amount if account balance is positive"
  [balance tax-free-percentage]
  (if (pos? balance) (int (double-donation balance tax-free-percentage)) 0))