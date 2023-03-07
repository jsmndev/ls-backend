# What will the following programs return? What is in the value
# of `arr` after each?

# 1)
arr = ["b", "a"]
arr = arr.product(Array(1..3))
# => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last)
# arr.first
# => ["b", 1]
# arr.first.last
# => 1
# ["b", 1].delete(1)
# => 1 <-- deletes 1
#
# arr's value is now:
# => [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# 2)
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
# [Array(1..3)] 
# => [[1, 2, 3]]
# => [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
arr.first.delete(arr.first.last)
# arr.first
# => ["b", [1, 2, 3]]
# arr.first.last
# => [1, 2, 3]
#
# ["b", [1, 2 3]].delete([1, 2, 3])
