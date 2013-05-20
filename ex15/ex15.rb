# when opened the file takes an argument whichwhich should be a file name
filename = ARGV.first

prompt = "> "

# opens file as specified in filename
txt = File.open(filename)

# prints name of file
puts "Here's your file: #{filename}"

# prints out the content of the file
puts txt.read

puts "I'll also ask you to type it again"
print prompt

#repeat above
file_again = STDIN.gets.chomp

txt_again = File.open(file_again)

puts txt_again.read
