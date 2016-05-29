puts "Hello. What is your name?"
name = $stdin.gets.chomp

puts "#{name}, would you like to play this game?"
puts "1. Yes."
puts "2. No."

print ">> "
play = $stdin.gets.chomp.to_i

if play == 1
	puts "Cool! In what country were you born?"
	puts "1. Belarus."
	puts "2. USA."
	puts "3. Moon."
 
	print ">> "
	country = $stdin.gets.chomp.to_i

	if country == 1
		puts "You are going to be a very strong player."
	elsif country == 2
		puts "Let's see what you can do."
	else
		puts "This is not a valid country name."
	end


elsif play == 2
	puts "Ok. When were you born?"

	print ">> "
	birth_year = $stdin.gets.chomp.to_i

	if birth_year <= 1990
		puts "You'r an older player."
	elsif birth_year == 2001 || birth_year == 2016
		puts "You are an exeptional player."
	else
		puts "I don't think you should play this game"
	end
		

else
	puts "This is a good choice. try again later. Good bye!"
end
		