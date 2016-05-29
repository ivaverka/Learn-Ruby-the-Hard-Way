# Add another variable to the function arguments that you can pass in that lets you change the + 1

=begin
def while_loop(i, max, increment)
    numbers = []

while i < max
	puts "At the top i is #{i}"
	numbers.push(i)

	i += increment
	puts "Numbers now: #{numbers}"
	puts "At the bottom  i is #{i}"
end

puts "The numbers: "

numbers.each {|num| puts num}
end

while_loop(4, 10, 2)
=end



# write it to use for-loops and ranges instead
=begin
def while_loop(i, increment)
    numbers = []

for i in (0..6)
	puts "At the top i is #{i}"
	numbers.push(i)

	puts "Numbers now: #{numbers}"
	puts "At the bottom  i is #{i}"
end

puts "The numbers: "

numbers.each {|num| puts num}
end

while_loop(4, 2)
=end

# Different version of a for-loop
=begin
def while_loop(i, increment)
    numbers = []

(0..6).each do |i|
	puts "At the top i is #{i}"
	numbers << i

	puts "Numbers now: #{numbers}"
	puts "At the bottom  i is #{i}"
end

puts "The numbers: "

numbers.each {|num| puts num}
end

while_loop(4, 2)
=end



=begin
a = [(0..9)]
puts a.at(6)
=end


digits = Array(0..9)

puts "#{digits}"

#This will produce the following result:

#0123456789





digits = Array(0..9)

puts "Digits in the array are #{digits}"
num = digits.at(1)

=begin I don't know how to automate it
num.each do |x|
	puts "Digit at index #{x} is "
end
=end

puts "The digit at index 0 is #{num}"




