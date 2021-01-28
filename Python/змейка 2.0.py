from tkinter import *
import keyboard
import random
import time

# базовое окно
root = Tk()
root.title("Игра змейка")
root.geometry("400x400")
root.resizable(width=False, height=False)

# текстовая область
text1 = Text(width=400,height=400)
text1.grid()

# класс змейка
class Snake:

    def __init__(self):
        self.head = [[1,1]]

    def __add(self,x,y):
        self.head.append((x,y))

    def is_touch(self):
        if len(self.head) == 1:
            return False
        for i in range(1,len(self.head)-1,1):
            for j in range(i+1,len(self.head),1):
                if self.head[i][0] == self.head[j][0] and self.head[i][1] == self.head[j][1]:
                    return True
        return False

    def eat(self):
        part1 = self.head[len(self.head)-1]
        part2 = self.head[len(self.head)-2]


# поле игры
def field(snake1,cell):
    text1.config(state='normal')
    text1.delete(0.0,END)
    message = ""
    for i in range (25):
        for j in range (41):
            for part in snake1:
                if i == part[1] and j == part[0]:
                    message += "*"
                elif i == cell[1] and j == cell[0]:
                    message += "Я"
                elif j == 40:
                    message += "\n"
                else:
                    message += ""
    text1.insert(0.0, message)
    text1.config(state='disabled')


# еда
def food():
    x = random.randrange(21) + 1
    y = random.randrange(25) + 1
    return (x,y)


# основная программа
def main():
    snake1 = Snake()
    foodcell = food()
    field(snake1.head, foodcell)


# запуск основной программы
main()

# старт событийного цикла
root.mainloop()
