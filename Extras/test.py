# def words:
#   clojure.string/split-lines (slurp "https://lamp.epfl.ch/files/content/sites/lamp/files/teaching/progfun/linuxwords.txt")
#
# (def mnem
#   {\2 "ABC" \3 "DEF" \4 "GHI" \5 "JKL" \6 "MNO" \7 "PQRS" \8 "TUV" \9 "WXYZ"})
#
# (def char-code
#   (into {} (for [[k vs] mnem
#                  v vs]
#              [v k])))
#
# (defn word-code
#   [word]
#   (apply str (map char-code (.toUpperCase word))))
#
# (def words-for-num
#   (group-by word-code words))
#
# (defn decode
#   [number]
#   (if (empty? number)
#     #{()}
#     (into #{} (for [split (range 1 (inc (.length number)))
#                     word (get words-for-num (subs number 0 split))
#                     rest (decode (subs number split))]
#                 (cons word rest)))))
#
# (defn translate
#   [number]
#   (map (partial clojure.string/join " ") (decode number)))
#
# (translate "5299626")
# ;; ("lazy Nan" "jazz man" "lazy Mao" "jazz Nan" "lazy man" "jazz Mao")



#
# def digit_split(inp_digit):
#     digit_length = len(inp_digit)
#     count = 0
#     if (digit_length > 3):
#         while count < digit_length:
#             if (len(inp_digit[count:digit_length]) >= 3):
#                 print("p1",inp_digit[count:digit_length])
#             else:
#                 print("p1 NO part")
#
#             if count > 1:
#                 if (len(inp_digit[0:count]) >= 3):
#                     print("p2",inp_digit[0:count])
#                 else:
#                     print("p2 NO part")
#             else:
#                 print("p2 NO part")
#             count += 1

def digit_split(inp_digit):
    inp_digit_reduction = 0

    while len(inp_digit) >= 3:
        min_length = 3
        count = 0
        digit_length = len(inp_digit)

        if (digit_length >= 3):
            while count < digit_length:
                while min_length <= digit_length:
                    if (len(inp_digit[count:min_length]) >= 3):
                        print("p1", inp_digit[count:min_length])
                    else:
                        print("p1 NO part")

                    if count >= 0:
                        if (len(inp_digit[min_length:digit_length]) >= 3):
                            print("p2", inp_digit[min_length:digit_length])
                        else:
                            print("p2 NO part", inp_digit[min_length:digit_length])

                    min_length += 1
                count += 1

        inp_digit_reduction += 1
        inp_digit = inp_digit[inp_digit_reduction:digit_length]

digit_split("123456")


