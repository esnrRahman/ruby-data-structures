def binary_search(item, arr)
    first = 0
    last = arr.length - 1

    while first <= last
        i = (first + last) / 2

        if arr[i] == item
            return true
        elsif arr[i] > item
            last = i - 1
        elsif arr[i] < item
            first = i + 1
        end
    end
    false
end

# test = [1, 5, 7, 8, 10, 15, 29]


# puts binary_search(5, test)
# puts binary_search(0, test)
# puts binary_search(-9, test)
# puts binary_search(15, test)
# puts binary_search(10, test)
