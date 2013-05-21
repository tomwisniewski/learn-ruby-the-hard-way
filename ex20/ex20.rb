input_file = ARGV[0]

# method that takes the input of a file and prints it to screen
def print_all(f)
  puts f.read
end

# method that moves the cursor in a file back to the start
def rewind(f)
  f.seek(0, IO::SEEK_SET)  
end

# method that reads one line of a file, passing in that line number as an argument
def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline}"
end

# open file passed in as initial argument
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts 

# print out file
print_all(current_file)

puts "Now let's rewind"
# moves cursor back to start of the file
rewind(current_file)

puts "Let's print three lines:"

# set current line var to 1
current_line = 1
# print out number of first line with 'current_line' (ie. 1) and the line itself
print_a_line(current_line, current_file)  

# add one to current line
current_line += 1
# print out line number and line
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

