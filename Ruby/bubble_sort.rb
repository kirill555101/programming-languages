# frozen_string_literal: true

def bubble_sort(array = nil)
  return [] if array.nil?

  length = array.length
  new_array = Array.new array
  (0...length - 1).each do |i|
    (i + 1...length).each do |j|
      new_array[i], new_array[j] = new_array[j], new_array[i] if new_array[i] > new_array[j]
    end
  end
  new_array
end

array = [5, 4, 1, -1, 2, 3, 5, -10, 10, 1]

p bubble_sort(array).join(' ') # => "-10 -1 1 1 2 3 4 5 5 10"
