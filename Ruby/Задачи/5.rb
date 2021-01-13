# frozen_string_literal: true

#   Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.

array = [2.4, 4.2, 3.0, 5.1, 6.05, 7.45, 8.90, 10.78, 11.22, 12.25, 7.0, 8.7]
R = 5.5
new_array = array.map { |element| (element - R).abs }
p array[new_array.index { |element| (element - new_array.min).abs < 0.001 }]
