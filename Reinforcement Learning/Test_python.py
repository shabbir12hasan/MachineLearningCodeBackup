a = 10
b = 12

def sum_cal(x,y):
    new_x = x *10
    new_y = y * 10
    return new_x + new_y

def sub_cal(x,y):
    new_x = x *10
    new_y = y * 10
    return new_x - new_y


def div_cal(x,y):
    new_x = x *10
    new_y = y * 10
    return new_x / new_y

def make_calc(a,b):
    print(sum_cal(a,b))
    print(sub_cal(a, b))
    print(div_cal(a, b))

print(make_calc(a,b))