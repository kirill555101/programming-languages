# frozen_string_literal: true

def shaker_sort(array = nil)
  return [] if array.nil?

  new_array = Array.new array
  swapped = true
  start_index = 0
  end_index = array.length - 1
  while swapped
    swapped = false
    # Left to right
    start_index.upto(end_index - 1) do |i|
      if new_array[i] > new_array[i + 1]
        new_array[i], new_array[i + 1] = new_array[i + 1], new_array[i]
        swapped = true
      end
    end

    break unless swapped

    swapped = false
    end_index -= 1

    # Right to left
    (end_index - 1).downto(start_index) do |i|
      if new_array[i] > new_array[i + 1]
        new_array[i], new_array[i + 1] = new_array[i + 1], new_array[i]
        swapped = true
      end
    end
    start_index += 1
  end
  new_array
end

array = [5, 4, 1, -1, 2, 3, 5, -10, 10, 1]

p shaker_sort(array).join(' ') # => "-10 -1 1 1 2 3 4 5 5 10"
