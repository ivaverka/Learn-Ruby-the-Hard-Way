# Line 4 "unpacks" ARGV so that, rather than holding all the arguments,
# it gets assigned to three variables you can work with: first, second, and third
# "Take whatever is in ARGV, unpack it, and assign it to all of these variables on the left in order."
first, second, third, fourth = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts "Your fourth variable is: #{fourth.to_i}"

# I don't know how to combine ARGV and gets.chomp. I am getting an error if I pass variables in the Terminal
# Or the line above gets printed and I cannot provide my input.
print "Do you want to add anything to it? "
my_nymber = gets.chomp.to_i