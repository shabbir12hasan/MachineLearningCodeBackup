def words:
  clojure.string/split-lines (slurp "https://lamp.epfl.ch/files/content/sites/lamp/files/teaching/progfun/linuxwords.txt")

(def mnem
  {\2 "ABC" \3 "DEF" \4 "GHI" \5 "JKL" \6 "MNO" \7 "PQRS" \8 "TUV" \9 "WXYZ"})

(def char-code
  (into {} (for [[k vs] mnem
                 v vs]
             [v k])))

(defn word-code
  [word]
  (apply str (map char-code (.toUpperCase word))))

(def words-for-num
  (group-by word-code words))

(defn decode
  [number]
  (if (empty? number)
    #{()}
    (into #{} (for [split (range 1 (inc (.length number)))
                    word (get words-for-num (subs number 0 split))
                    rest (decode (subs number split))]
                (cons word rest)))))

(defn translate
  [number]
  (map (partial clojure.string/join " ") (decode number)))

(translate "5299626")
;; ("lazy Nan" "jazz man" "lazy Mao" "jazz Nan" "lazy man" "jazz Mao")