# Given 2 lists a and b. Each element is a pair of integers where the first
# integer represents the unique id and the second integer represents a value.
# Your task is to find an element from a and an element form b such that the
# sum of their values is less or equal to target and as close to target as
# possible. Return a list of ids of selected elements. If no pair is possible,
# return an empty list.

def find_list_of_pairs(arr1, arr2, target)
  final_hash = {}
  arr1_hash = arr1.to_h
  arr2_hash = arr2.to_h

  arr1_hash.each do |k1, v1|
    arr2_hash.each do |k2, v2|
      sum = v1 + v2
      final_hash[sum] = final_hash[sum] ? final_hash[sum].push([k1, k2]) : [[k1, k2]]
    end
  end

  if final_hash[target]
    return final_hash[target]
  else
    greatest_sum = -1
    final_hash.each do |k, v|
      if k < target && k > greatest_sum
        greatest_sum = k
      end
    end

    return final_hash[greatest_sum]
  end
end

arr1 = [[1, 3], [2, 5], [3, 7], [4, 10]]
arr2 = [[1, 2]]
target = 7
# expected = [[2, 1]]
puts "THE ANSWER IS => #{find_list_of_pairs(arr1, arr2, target)}"

arr1 = [[1, 3], [2, 5], [3, 7], [4, 10]]
arr2 = [[1, 2], [2, 3], [3, 4], [4, 5]]
target = 10
# expected = [[2, 4], [3, 2]]
puts "THE ANSWER IS => #{find_list_of_pairs(arr1, arr2, target)}"

arr1 = [[1, 8], [2, 7], [3, 14]]
arr2 = [[1, 5], [2, 10], [3, 14]]
target = 20
# expected = [[3, 1]]
puts "THE ANSWER IS => #{find_list_of_pairs(arr1, arr2, target)}"

arr1 = [[1, 8], [2, 15], [3, 9]]
arr2 = [[1, 8], [2, 11], [3, 12]]
target = 20
# expected = [[1, 3], [3, 2]]
puts "THE ANSWER IS => #{find_list_of_pairs(arr1, arr2, target)}"
