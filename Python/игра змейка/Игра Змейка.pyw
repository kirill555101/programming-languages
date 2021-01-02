# Игра Змейка
# использует пакет livewires

import pygame
import random

WIDTH = 800
HEIGHT = 650
FPS = 15

# Задаем цвета
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
RED = (255, 0, 0)
GREEN = (0, 255, 0)
BLUE = (0, 0, 255)
YELLOW=(255, 255, 0)

# Глобальные констаны
MOVE="d"
HEAD=[]
NUM=0
IS_ONE=True
SCORE=0
TOUCH=False
WIN=False

# Спрайт змея
class Snake(pygame.sprite.Sprite):
    num=0
    def __init__(self,x,y,i):
        global IS_ONE
        pygame.sprite.Sprite.__init__(self)
        self.image = pygame.Surface((20, 20))
        if IS_ONE:
            self.HEAD_D=pygame.image.load('Голова_D.png').convert_alpha()
            self.HEAD_S=pygame.image.load('Голова_S.png').convert_alpha()
            self.HEAD_A=pygame.image.load('Голова_A.png').convert_alpha()
            self.HEAD_W=pygame.image.load('Голова_W.png').convert_alpha()
            self.image=self.HEAD_D
        else:
            self.image.fill(GREEN)
        self.rect = self.image.get_rect()
        self.rect.center = (x, y)
        self.i=i
    
    def update(self):
        global MOVE
        global TOUCH
        for i in range(2,len(HEAD),1):
            if HEAD[0].rect.colliderect(HEAD[i]):
                TOUCH=True
        if self.i==0:
            for i in range(len(HEAD)-1,0,-1):
                HEAD[i].rect.center=HEAD[i-1].rect.center
            if MOVE=='w':
                self.image=self.HEAD_W
                self.rect.y -= 20
            elif MOVE=='a':
                self.image=self.HEAD_A
                self.rect.x -= 20
            elif MOVE=='s':
                self.image=self.HEAD_S
                self.rect.y += 20
            elif MOVE=='d':
                self.image=self.HEAD_D
                self.rect.x += 20
        for i in range(1,len(HEAD),1):
            if self.i==i:
                self.rect.center=HEAD[i].rect.center
                break
        if self.rect.left > WIDTH:
            self.rect.right = 0
        if self.rect.right < 0:
            self.rect.left = WIDTH
        if self.rect.top < 0:
            self.rect.bottom = HEIGHT
        if self.rect.bottom > HEIGHT:
            self.rect.top = 0
        for i in range(0,len(HEAD),1):
            HEAD[self.i].rect.center=self.rect.center
    def add(self,x,y):
        global IS_ONE
        global WIN
        if IS_ONE:
            IS_ONE=False
        self.num+=1
        HEAD.append(Snake(x,y,self.num))
        if len(HEAD)>=WIDTH*HEIGHT//20:
            WIN=True

# Спрайт еда
class Food(pygame.sprite.Sprite):
    def __init__(self,snake):
        pygame.sprite.Sprite.__init__(self)
        self.image = pygame.Surface((20, 20))
        image_food = pygame.image.load('apple.jpg').convert_alpha()
        self.image=image_food
        self.rect = self.image.get_rect()
        foodcell=randcell()
        while foodcell[0]==WIDTH // 2 and foodcell[1]==HEIGHT // 2:
            foodcell=randcell()
        self.rect.center = foodcell
        self.snake=snake
       
    def update(self):
        if self.rect.colliderect(self.snake.rect):
            global IS_ONE
            global SCORE
            SCORE+=1
            x=HEAD[self.snake.num].rect.center[0]
            y=HEAD[self.snake.num].rect.center[1]
            if MOVE=='w':
                if IS_ONE:
                    snake.add(x,y+20)
                else:
                    snake.add(x,y+10)
            elif MOVE=='a':
                if IS_ONE:
                    snake.add(x+20,y)
                else:
                    snake.add(x+10,y)
            elif MOVE=='s':
                snake.add(x,y-10)
            elif MOVE=='d':
                snake.add(x-10,y)
            foodcell=randcell()
            while foodcell[0]==snake.rect.center[0] and foodcell[1]==snake.rect.center[1]:
                foodcell=randcell()
            self.rect.center = foodcell

# Генерация рандомной ячейки
def randcell():
    x=random.randrange(WIDTH-40)+20
    y=random.randrange(HEIGHT-40)+20
    return (x,y)

# Создаем игру и окно
pygame.init()
pygame.mixer.init()
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption("Игра Змейка")
clock = pygame.time.Clock()
all_sprites = pygame.sprite.Group()
snake = Snake(WIDTH // 2, HEIGHT // 2,0)
HEAD.append(Snake(WIDTH // 2, HEIGHT // 2,0))
food=Food(snake)
all_sprites.add(snake)
all_sprites.add(food)
font=pygame.font.Font(None,36)
endgame=pygame.font.SysFont('arial',72)

# Цикл игры
running = True
while running and not TOUCH and not WIN:
    # Держим цикл на правильной скорости
    clock.tick(FPS)
    # Ввод процесса (события)
    for event in pygame.event.get():
        # Ожидание закрытия окна
        if event.type == pygame.QUIT:
            running = False
        # Ожидание нажатия кнопки
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_w:
                MOVE='w'
            if event.key == pygame.K_a:
                MOVE='a'
            if event.key == pygame.K_s:
                MOVE='s'
            if event.key == pygame.K_d:
                MOVE='d'
    # Обновление
    all_sprites.update()
    
    # Рендеринг
    if snake.num>NUM:
        if NUM==0:
            NUM=1
        for i in range(NUM,snake.num+1,1):
            all_sprites.add(HEAD[i])
        NUM=snake.num
    screen.fill(BLACK)
    all_sprites.draw(screen)
    text=font.render("Очки: "+str(SCORE),True,WHITE)
    screen.blit(text,[670,10])
    
    # После отрисовки всего, переворачиваем экран
    pygame.display.flip()
# Проигрыш
if TOUCH:
    text=font.render("Вы проиграли",True,RED)
    screen.blit(text,[WIDTH // 2, HEIGHT // 2])
    pygame.display.flip()
    pygame.time.wait(1000)
# Выигрыш
elif WIN:
    text=font.render("Вы выиграли",True,GREEN)
    screen.blit(text,[WIDTH // 2, HEIGHT // 2])
    pygame.display.flip()
    pygame.time.wait(1000)

pygame.quit()


