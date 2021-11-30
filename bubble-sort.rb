
def bubble_sort(array)
    sorted_array = true
    loop do
        sorted_array = false
        for i in (0..array.length-2)
            if array[i] > array[i+1]
                array.insert(i+1, array.delete_at(i))
                array = array.compact
                sorted_array = true
            end
        end
        unless sorted_array
            break
        end
    end
    array
end

p bubble_sort([4,3,78,2,0,2])
#=>[0,2,2,3,4,78]