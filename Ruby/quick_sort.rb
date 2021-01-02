# frozen_string_literal: true

def quick_sort(array = nil)
  return [] if array.nil?
  return array if array.length <= 1

  item = array.sample(1).first
  items_array = array.find_all { |value| value == item }
  less_array = array.select { |value| value < item }
  larger_array = array.select { |value| value > item }

  quick_sort(less_array) + items_array + quick_sort(larger_array)
end

array = [5, 4, 1, -1, 2, 3, 5, -10, 10, 1]

p quick_sort(array).join(' ') # => "-10 -1 1 1 2 3 4 5 5 10"
