# frozen_string_literal: true

def binary_search(array = [], element = nil)
  return if array.empty? || element.nil?

  max_index = array.length - 1
  mid_index = max_index / 2
  if array[mid_index] > element
    new_array = mid_index.positive? ? array[0..(mid_index - 1)] : []
    binary_search(new_array, element)
  elsif array[mid_index] < element
    new_array = array[(mid_index + 1)..max_index]
    res = binary_search(new_array, element)
    res + mid_index + 1 unless res.nil?
  else
    mid_index
  end
end

array = [10, 20, 23, 35, 50, 72]

p binary_search(array, 50) # => 4
p binary_search(array, 10) # => 0
p binary_search(array, 100) # => nil
p binary_search(array, -20) # => nil
