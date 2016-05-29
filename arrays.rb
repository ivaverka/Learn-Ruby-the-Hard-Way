#Ex 1
=begin
array = [1, 3, 5, 7, 9, 11]
number = 3
=end

=begin
array.each do |x|
	if x == number
		puts "#{number} is in the array."
	end
end
=end

# OR
=begin
if array.include?(number)
	puts "#{number} is in the array."
end
=end

# Ex3
arr = [["test", "hello", "world"],["example", "mem"]]

=begin
arr.flatten
word = arr.flatten

puts word[3]
=end
puts arr.last.first
