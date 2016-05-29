#BEGIN { puts "hi" }

=begin
x = 1
while x < 10
	x += 1
	puts "#{x} is still less than 10."
	break if x == 5
end
=end

module Irynka
	def name(x)
		puts "You are cool #{x}"
	end
end

puts "Here is some text. \vWhat is bell? \vOne more time."