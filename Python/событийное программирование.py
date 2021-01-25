# создание графического интерфейса на основе модуля tkinter
from tkinter import *

# базовое окно
root = Tk()
root.title("Первый GUI")
root.geometry("300x200")

# рамка
app = Frame(root)
app.grid()

# метка
lbl = Label(text="Привет мир!")
lbl.grid(row=0,column=0,columnspan=4,sticky=N)

# кнопка
bttn1 = Button(text="Нажми на меня")
bttn1.grid(row=1,column=0)
bttn2 = Button(text="Написать")
bttn2.grid(row=3,column=0)

# событие нажатия
COUNT = 0


def write():
    global COUNT
    COUNT+=1
    bttn1["text"] = "Ты нажал на меня: "+str(COUNT)
bttn1["command"] = write


def writetext():
    if entry1.get():
        message = "Вы ввели: "
        message += entry1.get()
    else:
        message = "Вы ничего не ввели"
    text1.delete(0.0,END)
    text1.insert(0.0,message)
bttn2["command"]=writetext


# текстовое поле
entry1 = Entry()
entry1.grid(row=2,column=0)


# текстовая область
text1 = Text(width=20,height=10,wrap=WORD)
text1.grid()


# старт событийного цикла
root.mainloop()
