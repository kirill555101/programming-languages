array = {
       '+': lambda x,y : x+y, '-': lambda x,y : x-y,
       '*': lambda x,y : x*y, '/': lambda x,y : x/y
}
x,y = map(int, input("Введите 2 числа через пробел: ").split())
z = input("Введите операцию +, -, *, /: ")
print(x, z, y, "=", array[z](x,y))
