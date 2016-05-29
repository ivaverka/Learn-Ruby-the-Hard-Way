filename = ARGV.first # I pass the name of my txt file here (in the Terminal: ruby ex15.rb ex15_sample txt)

txt = open(filename) # I assign any txt file I pass now to txt =. open(filename): open command will open the file I have just mentioned
# but the content of the txt will not be displayed yet.
puts "Here's your file #{filename}:" # Prints a message with the name of the file I passed (every time I can give a new file name)
print txt.read # Prints the contents of the txt file. To do that we use .read method (function?) which will read the opened file.
txt = close(filename)

print "\nType the filename again: " # Asks me to provide the file name not in the Terminal but during the interaction with the app.
file_again = $stdin.gets.chomp # new variable name = we use $stding here because of the ARGV. gets.chomp gets input from the user and chomps \n new line

txt_again = open(file_again) # I use open comman to open the file. It is like opening a box without taking out the contents (Ira).

print txt_again.read # Prints the contents of the file because we use .read method (function?)
print txt_again.close