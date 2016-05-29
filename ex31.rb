puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
	puts "There's a giant bear here eating a cheese cake. What do you do?"
	puts "1. Take the cake."
	puts "2. Scream at the bear."

	print "> "
	bear = $stdin.gets.chomp

	if bear == "1"
		puts "The bear eats your face off. Good job!"
	elsif bear == "2"
		puts "The bear eats your legs off. Good job!"
	else
		puts "Well, doing %s is probably better. Bear runs away." % bear
	end

elsif door == "2"
	puts "You stare into the endless abyss at Cthulhu's retina."
	puts "1. Blueberries."
	puts "2. Yellow jacket clothespins."
	puts "3. Understanding revolvers yelling melodies."

	print "> "
	insanity = $stdin.gets.chomp

	if insanity == "1" || insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job!"
	else
		puts "The insanity rots your eyes into a pool of muck. Good job!"
	end

else
	puts "You stumble around and fall on a knofe and die. Good job!"
	puts "Do you want to continue playing this game?"
	puts "1. Yes."
	puts "2. No."
	puts "3. I don't know."

	print "> "
	continue = $stdin.gets.chomp.to_i

	if continue == 1
		puts "Great! Get ready! We continue!"
	elsif continue == 2
		puts "Well, thank you for playing! See you next time."
	else
		puts "Ok, chossing %s is a much better choice." % continue
	end


end



		
			