def linear_search(lists, value)
    head = 0
    tail = lists.length - 1
    while head <= tail
        center = ((head + tail)/2.0).round()
        if lists[center] == value
            return center
            break
        elsif lists[center] < value
            head = center + 1
        else
            tail = center - 1
        end
    end
end
value = gets.to_i
list_number = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]
puts linear_search(list_number, value)

