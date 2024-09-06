def bubble_sort(arr)
  n = arr.length
  arr.each_with_index do |_, i|
    (n - 1 - i).times do |j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2]) # [0, 2, 2, 3, 4, 78]