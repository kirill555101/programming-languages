class Tree:

    def __init__(self, value, left=None, right=None):
        self.value = value
        self.left, self.right = left, right

    def append(self, value, left=None, right=None): 
        tree = self
        while tree is not None:
            tree = tree.right if value > tree.value else tree.left
        tree = Tree(value)

    def __str__(self):
        pass

    def __del__(self):
        pass

value = int(input("Введите число: "))
tree = Tree(value)

while input_str := input("Введите число: "):
    value = int(input_str)
    tree.append(value)
    
print(tree)