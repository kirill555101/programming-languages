#Виселица
import random

#константы
HANGMAN = (
"""
                 $$$$$$$$$$$$$$$
                               $
                               $
                               $
                               $
                               $
                               $
                               $
                               $
                               $
                               $
          $$$$$$$$$$$$$$$$$$$$$$$$$$$$
          $                          $
""",
"""
                 $$$$$$$$$$$$$$$
                 |             $
                 |             $
                 |             $
                 |             $
                               $
                               $
                               $
                               $
                               $
                               $
          $$$$$$$$$$$$$$$$$$$$$$$$$$$$
          $                          $
""",
"""
                 $$$$$$$$$$$$$$$
                 |             $
                 |             $
                 |             $
                 |             $
                 O             $
                               $
                               $
                               $
                               $
                               $
          $$$$$$$$$$$$$$$$$$$$$$$$$$$$
          $                          $
""",
"""
                 $$$$$$$$$$$$$$$
                 |             $
                 |             $
                 |             $
                 |             $
                 O             $
               /   \           $
                               $
                               $
                               $
                               $
          $$$$$$$$$$$$$$$$$$$$$$$$$$$$
          $                          $
""",
"""
                 $$$$$$$$$$$$$$$
                 |             $
                 |             $
                 |             $
                 |             $
                 O             $
               / | \           $
                 |             $
                               $
                               $
                               $
          $$$$$$$$$$$$$$$$$$$$$$$$$$$$
          $                          $
""",
"""
                 $$$$$$$$$$$$$$$
                 |             $
                 |             $
                 |             $
                 |             $
                 O             $
               / | \           $
                 |             $
                / \            $
                               $
                               $
          $$$$$$$$$$$$$$$$$$$$$$$$$$$$
          $                          $
""")
MAX_WRONG = len(HANGMAN) - 1
WORDS = (
    "СЛОН","ЯГУАР","МЕДВЕДЬ","ЛИСА","ОЛЕНЬ","ЛАМА","КРОЛИК","ВОЛК",
    "СОБАКА","КОШКА","ХОРЕК","ПУМА","ЗАЯЦ","АНТИЛОПА","ЛЕВ","ТИГР"
)

word = random.choice(WORDS)
so_far = "-" * len(word)
wrong = 0
used = []
print("Добро пожаловать в игру 'Виселица'. Удачи вам!")
print("Тема игры - животные")
while wrong < MAX_WRONG and so_far != word:
    print(HANGMAN[wrong])
    print(f"\nВы уже отгадали следующие буквы:\n {used}")
    print(f"\nОтгаданное вами слова сейчас выглядит так:\n {so_far}")
    guess = input("\n\nВведите букву: ")
    guess = guess.upper()
    while guess in used:
        print(f"Вы уже предлагали букву {guess}")
        guess = input("\n\nВведите букву: ")
        guess=guess.upper()
    used.append(guess)
    if guess in word:
        print(f"\nДа! Буква {guess} есть в слове!")
        new = ""
        for i in range(len(word)):
            if guess == word[i]:
                new += guess
            else:
                new += so_far[i]
        so_far = new
    else:
        print(f"\nК сожалению, буквы {guess} нет в слове.")
        wrong += 1
if wrong == MAX_WRONG:
    print(HANGMAN[wrong])
    print("\nВас повесили!")
else:
    print("\nВы отгадали!")
print(f"\nБыло загадано слово{word}")
input("\n\nНажмите Enter, чтобы выйти.") 
