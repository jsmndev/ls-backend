def repeat(str, counter)
  if counter <= 0
    puts "Must be positive integer"
  else
    while counter > 0
      puts str
      counter -= 1
    end
  end
end

repeat("hello", 3)
repeat("hello", 0)
repeat("hello", -10)

# recursion
def repeatv2(str, counter)
  if counter > 0
    puts str
    repeat(str, counter - 1)
  elsif counter <= 0
    puts "Must be positive integer"
  else
    return
  end
end

repeatv2("hello", 3)
repeatv2("hello", 0)
repeatv2("hello", -10)
