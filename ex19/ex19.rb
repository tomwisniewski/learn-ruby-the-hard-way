# create a method that takes two arguments
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  # print out some statements that incorporate the passed in arguments
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket"
end

puts "We can just give the function numbers directly:"
# call the method passing in two integers as arguments
cheese_and_crackers(20, 30)

puts "OK, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
# call the method passing in two integers as arguments
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
# call the method passing in two mathematical equations as arguments
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
# call the method passing in two mathematical equations that use variables and integers combined
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
