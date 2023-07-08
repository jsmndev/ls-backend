# Get rid of duplicates without specifically removing any one value.


arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.push(11)
arr.unshift(0)
arr.pop
arr << 3

# Get rid of duplicates
arr.uniq
# or
arr.uniq!


# LS Answer
# Does not modify calling object
arr.uniq

# Modifies the calling object
arr.uniq!
