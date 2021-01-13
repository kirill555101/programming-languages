# frozen_string_literal: true

def selection_sort(array = nil)
  return [] if array.nil? || !array.is_a?(Array)

  new_array = array.clone
  (array.length - 1).times do |i|
    current_element = new_array[i]
    _, min_index = new_array.each_with_index.select { |element, index| index >= i && element <= current_element }.min
    new_array[min_index], new_array[i] = new_array[i], new_array[min_index]
  end
  new_array
end

array = [5, 4, 1, -1, 2, 3, 5, -10, 10, 1]

p selection_sort(array).join(' ') # => "-10 -1 1 1 2 3 4 5 5 10"
