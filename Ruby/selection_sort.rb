# frozen_string_literal: true

def selection_sort(array = nil)
  return [] if array.nil?

  length = array.length
  new_array = Array.new array
  (length - 1).times do |i|
    min_index = i

    (i + 1).upto(length - 1) do |j|
      min_index = j if new_array[min_index] > new_array[j]
    end

    new_array[min_index], new_array[i] = new_array[i], new_array[min_index] if min_index != i
  end
  new_array
end

array = [5, 4, 1, -1, 2, 3, 5, -10, 10, 1]

p selection_sort(array).join(' ') # => "-10 -1 1 1 2 3 4 5 5 10"
