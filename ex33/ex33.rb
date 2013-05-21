def while_loop(n, increase_by)
  i = 0
  numbers = []

  while i < n
    puts "At the top is #{i}"
    numbers.push(i)

    i += increase_by
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

  for num in numbers
    puts num
  end   
end

while_loop(9, 3)

