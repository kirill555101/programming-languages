# frozen_string_literal: true

# Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент.
# Первый и последний элементы массива не изменять.

array = [2, 4, 3, 5, 6, 7, 8, 10, 11, 12, 7, 8]
first_element = array[0]
p array.map.with_index do |element, index|
  index != 0 && index != array.length - 1 && element.even? ? element + first_element : element
end
