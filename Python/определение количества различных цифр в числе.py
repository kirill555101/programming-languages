array = [False for i in range(10)]
a = int(input('Введите число: '))
b = a

while a!= 0:
    array[a%10] = True
    a //= 10

k = len([elem for elem in array if elem])
print(f'Количество цифр в числе {b} равно {k}')
