# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
#
# 1634 = 1^4 + 6^4 + 3^4 + 4^4
# 8208 = 8^4 + 2^4 + 0^4 + 8^4
# 9474 = 9^4 + 4^4 + 7^4 + 4^4
# As 1 = 1^4 is not a sum it is not included.
#
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

power = 4
nums = []

d1=0
for d1 in range(10):
    d2=0
    for d2 in range(10):
        d3=0
        for d3 in range(10):
            d4=0
            for d4 in range(10):
                # print( str(d1) + str(d2) + str(d3) + str(d4))
                if (str(d1) + str(d2) + str(d3) + str(d4) == str((d1 ** power) + (d2 ** power) + (d3 ** power) + (d4 ** power))):
                    print(str(d1) + str(d2) + str(d3) + str(d4))
                    nums.append(str(d1) + str(d2) + str(d3) + str(d4))
                d4 += 1
            d3 += 1
        d2 += 1
    d1 += 1

total_sum = 0

for digit in nums:
    total_sum += int(digit)
print("total sum is: ", total_sum)
