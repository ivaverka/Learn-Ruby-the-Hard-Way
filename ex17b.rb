# This is a modified file.

from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how?
File.open(from_file).read


# we use the indata variable because it reads in_file and in_file opens from_file. So, indata knows everything about our in_file.
puts "The input file is #{File.open(from_file).read.length} bytes long"

# we use .exist? function to check if the output file (to_file) exists.
puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
# we use stdin because we use ARGV.
# We don't use chomp because we want a new line to be created after the user provides their input.
$stdin.gets

# we open to_file and tell it to open it in the write only mode (the content will be overwritten).
out_file = open(to_file, 'w')
# we use .write to write to a file. In the brackets we put what we want to write to the file we have just opened.
# here we want to write the contents of the indata variable = from_file
out_file.write(File.open(from_file).read)

puts "Alright, all done."

# we need to close the files we opened.
out_file.close
# HOW Do I close the other file?
File.open(from_file).close