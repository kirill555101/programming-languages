class Tree:

    def __init__(self, value=0, left=None, right=None):
        self.value = value
        self.left, self.right = left, right

    def append(self, value, left=None, right=None):
        """Appends a new element to the tree"""
        if self.value == value:
            return
        elif self.value < value:
            if self.right is None:
                self.right = Tree(value)
            else:
                self.right.append(value)
        else: # self.value > value
            if self.left is None:
                self.left = Tree(value)
            else:
                self.left.append(value)

    def __str__(self):
        lines, *_ = self.__convert_to_string()
        
        return "\n".join(lines)

    def __convert_to_string(self):
        """Returns a list of strings, width, height, and horizontal coordinate of the root."""
        # No child.
        if self.right is None and self.left is None:
            line = '%s' % self.value
            width = len(line)
            height = 1
            middle = width // 2
            return [line], width, height, middle

        # Only left child.
        if self.right is None:
            lines, n, p, x = self.left.__convert_to_string()
            s = '%s' % self.value
            u = len(s)
            first_line = (x + 1) * ' ' + (n - x - 1) * '_' + s
            second_line = x * ' ' + '/' + (n - x - 1 + u) * ' '
            shifted_lines = [line + u * ' ' for line in lines]
            return [first_line, second_line] + shifted_lines, n + u, p + 2, n + u // 2

        # Only right child.
        if self.left is None:
            lines, n, p, x = self.right.__convert_to_string()
            s = '%s' % self.value
            u = len(s)
            first_line = s + x * '_' + (n - x) * ' '
            second_line = (u + x) * ' ' + '\\' + (n - x - 1) * ' '
            shifted_lines = [u * ' ' + line for line in lines]
            return [first_line, second_line] + shifted_lines, n + u, p + 2, u // 2

        # Two children.
        left, n, p, x = self.left.__convert_to_string()
        right, m, q, y = self.right.__convert_to_string()
        s = '%s' % self.value
        u = len(s)
        first_line = (x + 1) * ' ' + (n - x - 1) * '_' + s + y * '_' + (m - y) * ' '
        second_line = x * ' ' + '/' + (n - x - 1 + u + y) * ' ' + '\\' + (m - y - 1) * ' '
        if p < q:
            left += [n * ' '] * (q - p)
        elif q < p:
            right += [m * ' '] * (p - q)
        zipped_lines = zip(left, right)
        lines = [first_line, second_line] + [a + u * ' ' + b for a, b in zipped_lines]
        return lines, n + m + u, max(p, q) + 2, n + u // 2

value = int(input("Введите число: "))
tree = Tree(value)

while input_str := input("Введите число: "):
    value = int(input_str)
    tree.append(value)

print(tree)