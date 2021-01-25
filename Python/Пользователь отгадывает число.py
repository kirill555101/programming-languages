import random
# Программа генерирует рандомное число
# от 1 до 100
base_num = random.randint(1, 100)
print("Программа генерирует рандомное число от 1 до 100")
print("Вам нужно отгадать его за наименьшее число попыток")
print("Число попыток должно быть меньше 10\n")
num = int(input("Введите число "))
count = 1
while num != base_num and count < 10:
    if num > base_num:
        print("Число меньше",num,"\n")
    elif num < base_num:
        print("Число больше",num,"\n")
    num = int(input("Введите число "))
    count += 1
if count < 10:
    print("\nПравильно! Загаданное число равно", base_num)
    print("Вы отгадали его за", count, "попыток!")
else:
    print("\nВы проиграли! Загаданное число равно", base_num)
input("\nДля выхода нажмите Enter...")
    
