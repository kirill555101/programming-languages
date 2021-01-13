# frozen_string_literal: true

#   Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.

array = [1, 4, 3, 5, 6, 7, 8, 10, 11, 12, 7, 9]
p array.select.with_index { |_, index| index.even? } + array.select.with_index { |_, index| index.odd? }
