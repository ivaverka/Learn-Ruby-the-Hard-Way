# Variable called filename I print the name of the existing file in the Terminal.
filename = ARGV.first

# Prints that the file I printed in the terminal will be erased.
puts "We're going to erase #{filename}"
# Asks me for action. I think if i just click Return, it will do the trick. CTRL-C doesn't work for me and I don't think it will 'cause there is no command for that.
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

# Gets my input. Here - Return. We use $stdin because we use ARGV.
$stdin.gets

# Prints the message.
puts "Opening the file..."
# We will use the variable "target" to do manipulations with our text file. Here it opens the  text file. I don't know what 'w' means.
target = open(filename, 'w')

# Prints the message.
puts "Truncating the file. Goodbye!"
# Empties the file. I don't know why we use '0' here.
target.truncate(0)

# prints the message.
puts "Now I'm going  to ask you for three lines."

# Asks for input for Line 1.
print "Line 1: "
# Gets my input (in the form of a string). 
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

# Prints the message.
puts "I'm going to write these to the file."

# Here again we use the variable "target" and we write the input received from me to the empty file (we emptied it with the 'truncate' command).
# I put variables line1 line2 etc in double quotes => string to be able to use \n. Then I format them using #{}.
# Look at line 2 and 3 - both formats work (with #{} and without). Why?
target.write("line1 \n#{line2} \nline3")

puts "And finally, we close it."
# We close the file by using the variable 'target' and .close command.
target.close
