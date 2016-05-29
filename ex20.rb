# In the command line we will pass the name of the file
# I don't know/am not sure why we use .first
input_file = ARGV.first

# Function called print_all. It will open and read (print) f (a variable) - the whole file
def print_all(f)
	puts f.read
end

# This function will rewind the text file - will go to the beginning of it.
def rewind(f)
	# I am not sure what .seek(0) does
	f.seek(0)
end

# This function will print one line. It will count lines. It will take f (=the file name we provided in the
	# command line)
# line_count counts lines in Ruby (?)
def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end

# We create a new variable current_file which equals input_file (or the file we provide in the command line)
current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

# We devine a new variable (current_line) and assign a number to it (1)
current_line = 1
# We use function print_a_line which uses current_line (=1) and current_file
# I don't understand current_line.
print_a_line(current_line, current_file)

# We use current_line to increment itself (it was 1. now + 1 = 2)
current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)