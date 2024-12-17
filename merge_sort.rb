#   Iterative Merge Sort Method

# Merge Sort Pseudocode

# Function merge_sort(array)

def merge_sort_recursive(array)
  return array if array.length <= 1

  middle = array.length / 2
  first = merge_sort_recursive(array[0...middle])
  final = merge_sort_recursive(array[middle..-1])

  merge(first, final)
end

def merge(left, right)
  sorted_array = []
  until left.empty? || right.empty?
    sorted_array << if left.first <= right.first
                      left.shift
                    else
                      right.shift
                    end
  end

  sorted_array + left + right
end

array = [38, 27, 43, 3, 9, 82, 10]
sorted_array = merge_sort(array)
puts sorted_array.inspect
