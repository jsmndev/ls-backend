# Use Ruby's Array method delete_if and String method start_with? to delete all
# of the strings that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |str| str.start_with?('s') }

# Then recreate the arr and get rid of all of the strings that start with "s" or start with "w".
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |str| str.start_with?('s') || str.start_with?('w') }


# LS Answer
arr.delete_if { |str| str.start_with?("s") }

arr.delete_if { |str| str.start_with?("s", "w") }
