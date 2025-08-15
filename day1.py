#prime number
num = int(input("Enter a number: "))
if num > 1:
    for i in range(2, num):
        if num % i == 0:
            print("not a prime number")
            break
    else:
        print("prime number")
else:
    print("not a prime number")

    #factorial program
    num = int(input("Enter a number: "))
factorial = 1
for i in range(1, num + 1):
    factorial *= i
print(f"The factorial of {num} is {factorial}.")

#fibonacci series
n = int(input("Enter the number of terms: "))
print("Fibonacci Series:")
a, b = 0, 1
for i in range(n):
    print(a, end=" ")
    a, b = b, a + b

#to find the sum of digits in a given number


num = int(input("Enter a number: "))
sum_of_digits = 0
while num > 0:
    sum_of_digits += num % 10
    num //= 10
print("The sum of digits is", sum_of_digits)

#reverse the digits of a given number:


n= int(input("Enter a number: "))
rev = 0
while n > 0:
    rev= rev* 10 + n % 10
    n //= 10
print("The reversed number is", rev)




