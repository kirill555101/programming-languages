mas=[False,False,False,False,False,False,False,False,False,False]
a=int(input('Введите число: '))
b=a
while a!=0:
    mas[a%10]=True
    a//=10
k=0
for m in mas:
    if m:
        k+=1
print(f'Количество цифр в числе {b} равно {k}')
