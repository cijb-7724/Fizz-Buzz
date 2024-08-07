(defn read-int-value-line []
  (Integer/parseInt (read-line)))

(defn split-line-by-space [line]
  (str/split line #" "))

(let [nk (split-line-by-space (read-line))
      n (Integer/parseInt (first nk))
      k (Integer/parseInt (second nk))]
  (let [values (split-line-by-space (read-line))
        int-values (map #(Integer/parseInt %) values)]
    (doseq [value int-values]
      (when (zero? (mod value k))
        (println (/ value k))))))
