def add_three(number)
  number + 3
end

add_three(5)
  .times { puts 'this should print 8 times' }
  .times { |i| puts "let's keep going #{i} times" }
