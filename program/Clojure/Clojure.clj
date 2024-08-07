;Clojure (babashka 1.3.181)
(loop [i 1]
    (cond
        (zero? (mod i 15)) (println "FizzBuzz")
        (zero? (mod i 3)) (println "Fizz")
        (zero? (mod i 5)) (println "Buzz")
        :else (println i))
    (if (< i 101)
        (recur (inc i))
        i))
