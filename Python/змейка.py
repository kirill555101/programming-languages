# игра змейка
import keyboard
import random
import time

# класс змейка
class Snake:
    def __init__(self):
        self.head=[[20,10]]

    def __add(self,x,y):
        self.head.append((x,y))

    def is_touch(self):
        if len(self.head)==1:
            return False
        for i in range(1,len(self.head)-1,1):
            for j in range(i+1,len(self.head),1):
                if self.head[i][0]==self.head[j][0] and self.head[i][1]==self.head[j][1]:
                    return True
        return False

    def eat(self):
        part1=self.head[len(self.head)-1]
        part2=self.head[len(self.head)-2]


# поле игры
def field(snake1,cell):
    print("\n\n")
    for i in range (21):
        for j in range (41):
            for part in snake1:
                if i == part[1] and j == part[0]:
                    print("*", end="") 
                elif i == cell[1] and j == cell[0]:
                    print("Я", end="") 
                elif i == 0 or i == 20:
                    print("@", end="")
                    if j == 40:
                        print()
                elif j == 0:
                    print("@", end="")
                elif j == 40:
                    print("@")
                else:
                    print(" ", end="")


# еда
def food():
    x = random.randrange(39) + 1
    y = random.randrange(19) + 1
    return (x,y)

# основная программа
def main():
    snake1 = Snake()
    foodcell = food()
    while foodcell[0] != 20 and foodcell[1] != 10:
        foodcell = food()
    field(snake1.head, foodcell)
    move = 'd'
    while not (snake1.is_touch() or len(snake1.head)==800):
        if keyboard.is_pressed('w'):
            move='w'
        elif keyboard.is_pressed('a'):
            move='a'
        elif keyboard.is_pressed('s'):
            move='s'
        elif keyboard.is_pressed('d'):
            move='d'
        for i in range(len(snake1.head),1,-1):
            snake1.head[i]=snake1.head[i-1]
        if move == 'w':
            snake1.head[0][1] -= 1
        elif move == 'a':
            snake1.head[0][0] -= 1
        elif move == 's':
            snake1.head[0][1] += 1
        elif move == 'd':
            snake1.head[0][0] += 1
        if foodcell[0] == snake1.head[0] and foodcell[1] == snake1.head[1]:
            snake1.eat()
            foodcell = food()
            while foodcell[0] != snake1.head[0] and foodcell[1] != snake1.head[1]:
                foodcell = food()
        field(snake1.head, foodcell)
        time.sleep(0.5)

# запуск основной программы
main()
input("\n\nВведите Enter, чтобы выйти.")
