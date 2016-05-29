=begin
i = 0
numbers = []
=end


def while_loop(i, max)
    numbers = []

while i < max
	puts "At the top i is #{i}"
	numbers.push(i)

	i += 1
	puts "Numbers now: #{numbers}"
	puts "At the bottom  i is #{i}"
end

puts "The numbers: "

numbers.each {|num| puts num}
end

while_loop(4, 10)


=begin
puts "The numbers: "

# remember you can write this 2 other ways?
numbers = while_loop(4, 2)
numbers.each {|num| puts num}
# I need to repeat functions and variable that don't belong to them. Now I am getting an error
# for numbers (now it is inside the function)
=end


# Let's write a for-loop with (0..6) range operator

=begin
i = 0
numbers = []
=end

=begin
def for_loop(var2, increment2)
	i = 0
    numbers = [0..6]
numbers.each do |i|
	puts "At the top i is #{i}"
	numbers.push(i)

	puts "Numbers now: ", numbers
	puts "At the bottom  i is #{i}"
end
end

for_loop(4, 2)
=end