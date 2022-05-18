require 'pry-byebug'

def merge_sort(arr)
  return arr if arr.length < 2
  
  left_side_size = arr.length / 2
  left = merge_sort(arr[0...left_side_size])
  right = merge_sort(arr[left_side_size..arr.length])
  new_arr = []
  new_arr << (left[0] <= right[0] ? left.shift : right.shift) until left.empty? || right.empty?
  (new_arr << left << right).flatten!
end

p merge_sort([5, 7, 2, 8, 4, 6])