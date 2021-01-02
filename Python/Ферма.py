#ферма
#использование классов вместе со списком
#класс animal
class animal:
    def __init__(self,name,typ,hunger=0):
        self.__name=name
        self.__typ=typ
        self.__hunger=hunger
    def pass_time(self):
        self.__hunger=+self.__hunger
    def talk():
        if self.__typ=='корова':
            print("МУ-МУ")
        elif self.__typ=='овца':
            print("БЕЕЕ")
        elif self.__typ=='курица':
            print("КО-КО")
    def __str__(self):
        anim="Животное: "+self.__typ+"; Имя: "+self.__name+"; Голод: "+str(self.__hunger)
        return anim
#функция menu
def menu():
    print("""
Список доступных комманд:\n
0-Выход
1-Добавить животное
2-Узнать о самочувствии животных
3-Покормить животных
4-Убрать животное""")
#функция main
def main():
    farm=[]
    print("""\tДобро пожаловать в игру Ферма!\n
    \tВ этой игре у вас есть своя собственная ферма.
    \tЗа животными этой фермы вы ухаживаете.
    \tВ качестве животных у вас может быть корова, овца или курица.\n\n\n""")
    choice=None
    while choice!="0":
        menu()
        for anim in farm:
            anim.pass_time()
        choice=input("\nВаш выбор: ")
        if choice=="0":
            print("До свидания!")
        elif choice=="1":
            print("""
Выберите какое животное хотите добавить\n
0-Корова
1-Овца
2-Курица""")
            choice1=input("\nВаш выбор: ")
            if choice1=="0":
                name=input("Введите имя животного: ")
                farm.append(animal(name,"корова"))
            elif choice1=="1":
                name=input("Введите имя животного: ")
                farm.append(animal(name,"овца"))
            elif choice1=="2":
                name=input("Введите имя животного: ")
                farm.append(animal(name,"курица"))
            else:
                print("Неизвестная команда",choice)
        elif choice=="2":
            if len(farm):
                for anim in farm:
                    print(anim)
            else:
                print("У вас нет животных на ферме.")
        elif choice=="3":
            print("")
        elif choice=="4":
            i=1
            for anim in farm:
                print("Номер",i,end=" ")
                print(anim)
                i+=1
            num=int(input("Ведите номер убираемого животного: "))
            num-=1
            del farm[num]
            print("Вы убили животное. Вы, наверное, сожалеете об этом. Но я считаю, что вы ужасный человек.")
        else:
            print("Неизвестная команда",choice)
#основная программа
main()
input("\n\nНажмите Enter, чтобы выйти.")
