
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
                2: ["A", "B", "C"],
                3: ["D", "E", "F"],
                4: ["G", "H", "I"],
                5: ["J", "K", "L"],
                6: ["M", "N", "O"],
                7: ["P", "Q", "R", "S"],
                8: ["T", "U", "V"],
                9: ["W", "X", "Y", "Z"]
                 }


def digit_word_play(input_digit):
    #digit_word_map.get(2)
    brone_digit = input_digit.split("0")
# digit_word_play("0475110550")



def conv_word_digit(input_word):
    digit_list = []
    for char in input_word.upper():
        digit_list.append(word_digit_map[char])
    return digit_list


# def conv_digit_word(input_digit):
#     digit_dict = {}
#     for x in digit_word_map:
#         if x == 7:
#             print(digit_word_map[x].split())

    # return digit_dict[digit]

# print(conv_word_digit("HELL"))
# print(conv_digit_word("752"))

#
A = ['p','q','r','s']
B = ['t','u','v']
C = ['w','x','y','z']
D = ['i','j','l']
#
import itertools

def create_product():
    prod_li = list(itertools.product(A, B, C, D))
    for i in prod_li:
        print(''.join(i))

#1
# print(list(itertools.product(A, B, C, D)))




def create_list(inp):
    d={}
    for i in inp.strip():
        d["list_{}".format(i)] = (digit_word_map[int(i)])
    return d

# print(create_list("12"))


def create_prod(inp):
    i = inp.strip()
    print(i)


# print(create_product("345"))


prod_li = list(itertools.product(A, B, C, D))



