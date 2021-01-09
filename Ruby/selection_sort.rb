# frozen_string_literal: true

def selection_sort(array = nil)
  return [] if array.nil?

  length = array.length
  new_array = Array.new array
  (length - 1).times do |i|
    if element = new_array.each_with_index.select { |el| el[1] > i && el[0] < new_array[i] }.min
      new_array[element[1]], new_array[i] = new_array[i], new_array[element[1]]
    end
  end
  new_array
end

array = [5, 4, 1, -1, 2, 3, 5, -10, 10, 1]

p selection_sort(array).join(' ') # => "-10 -1 1 1 2 3 4 5 5 10"
