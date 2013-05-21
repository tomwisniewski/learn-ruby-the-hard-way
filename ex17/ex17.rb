from_file, to_file = ARGV
script = $0

# print out the name of the two files passed as arguments
puts "Copying from #{from_file} to #{to_file}"


# open the first file
input = File.open(from_file)

# take the input from file
indata = input.read

# print out size of file
puts "The input file is #{indata.length} bytes long"

# check if output file exists
puts "Does the output file exist? #{File.exists? to_file}"

# check if user wants to continue with process
puts "Ready, hit RETURN to continue, CTRL-C to abort."
STDIN.gets

# open and truncate output file
output = File.open(to_file, 'w')

# paste in input from first file
output.write(indata)

puts "Alright, all done."

# close both files
output.close
input.close