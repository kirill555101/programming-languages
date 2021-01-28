#Режем слово, введенное пользователем
print("Режем ваши слова, образуя тем самым новые, смешные слова.\n")
word = input("Введите слово: ")
print("\n")
size = len(word)
for i in range(0, size+1, 1):
    print(i, end="   ")

print("")
for i in range(0, size*4+1, 1):
    if i%4 == 0:
        print("+", end="")
    else:
        print("-", end="")
print("")

k = 0
for i in range(0, size*4+1, 1):
    if i%4 == 0:
        print("|", end="")
    elif i%2 == 0:
        print(word[k], end="")
        k += 1
    else:
        print(" ", end="")
print("")

for i in range(0, size*4+1, 1):
    if i%4 == 0:
        print("+", end="")
    else:
        print("-", end="")
print("")

for i in range(size, 0, -1):
    print(-i, end="  ")
print(f"\n\nВведите начальный и конечный индексы того среза '{word}', который хотите получить.")
print("Для выхода нажмите Enter, не вводя начальную позицию.")

start = None
while start != "":
    start = (input("\nНачальная позиция: "))
    if start:
        start = int(start)
        finish = int(input("Конечная позиция: "))
        print("Срез word[",start,":",finish,"] выглядит как", end=" ")
        print(word[start:finish])

input("\n\nНажмите Enter, чтобы выйти.")
