def bubble_sort(array)
  loop do
    sorted_array = false
    (0..array.length - 2).each do |i|
      next unless array[i] > array[i + 1]

      array.insert(i + 1, array.delete_at(i))
      array = array.compact
      sorted_array = true
    end
    break unless sorted_array
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
#=>[0,2,2,3,4,78]