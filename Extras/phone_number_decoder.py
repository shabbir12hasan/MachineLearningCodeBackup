
# reading word list
wordlist_path = ".\wordlist.txt"
wordlist_file = open(wordlist_path, 'r')
words = wordlist_file.readlines()


# setting alphabets on digits
word_digit_map =  { "A":2, "D":3, "G":4, "J":5, "M":6, "P":7,        "T":8 , "W" :9 ,
                    "B":2, "E":3, "H":4, "K":5, "N":6, "Q":7,        "U":8 , "X" :9 ,
                    "C":2, "F":3, "I":4, "L":5, "O":6, "R":7, "S":7, "V":8 , "Y" :9 , "Z" :9
                   }





digit_word_map = {

                    2: "ABC",
                    3: "DEF",
                    4: "GHI",
                    5: "JKL",
                    6: "MNO",
                    7: "PQRS",
                    8: "TUV",
                    9: "WXYZ"
                 }



def digit_word_play(input_digit):
    #digit_word_map.get(2)
    brone_digit = input_digit.split("0")




digit_word_play("0475110550")







def conv_word_digit(input_word):
    digit_list = []
    for char in input_word.upper():
        digit_list.append(word_digit_map[char])
    return digit_list


def conv_digit_word(input_digit):
    word_list = []
    for digit in input_digit:
        for char, digi in word_digit_map.items():
            if str(digi) == str(digit):
                word_list.append(char)
    return word_list

print(conv_word_digit("HELL"))
print(conv_digit_word("7511"))