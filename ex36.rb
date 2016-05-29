# Create A "Riddle Room"
# The player will be given 2 riddles
# #1 Tear one off and scratch my head what was red is black instead. - Answer: A matchstick.
# #2 What room can no one enter? - Answer: A mushroom.
# Each riddle will have 3 options: true - go further, false1 - go back to Start, false2 - end
# First answer riddle #1, then go to riddle #2, then go to "Treasure Room".
# ! Should I use a while loop if the user enters an invalid input: ex if it is invalid ask to input it again until they give a valid input.

def riddle_room
	puts "Welcome the Riddle Room."
	puts "You will be asked 2 riddles."
	puts "If you answer them correctly, you will be able to go further."
	puts "Are you ready? Let's start."

	puts "Riddle # 1. Tear one off and scratch my head what was red is black instead. What is it?"
	riddle_one = "a matchstick" # Add =~ that will match "matchstick" because a use may enter it withoun an article

	puts ">> "
	answer_one = $stdin.gets.chomp

	if answer_one == riddle_one
		puts "Good job! That's right. Let's move to Riddle # 2."
		# place a riidle 2 variable
	else 
		die("This is the end.") # When I have a function for Start/End, then I will need to do end("This is the end.")
	end


	puts "\nRiddle 2. What room can no one enter? What is it?"
	riddle_two = "a mushroom"

	puts ">> "
	answer_two = $stdin.gets.chomp

	if answer_two == riddle_two
		puts "That's correct! You can go to the Treasure Room now."
		treasure_room
	else
		die("You lost. The game is over.")
	end



end



# Create the "Lion Room"
# You need to move the lion:
# Taunt lon -> nothing happens, don't give up and do it again -> lion moves and you can go to the Treaure room
# If you scream -> the lion will not move -> it will eat you -> end

def lion_room
	puts "Welcome to the Lion Room."
	puts "You need to move the Lion. \nWhat are you going to do: taunt, open door, scream?"
	lion_moved = false

	while true
		print = ">>  "
		choice = $stdin.gets.chomp

		if choice == "scream"
			die("The lion gets angry and eats you. The End!")
		elsif choice == "taunt lion" && !lion_moved
			puts "The lion has moved from the door. You can go through it now."
			lion_moved = true
		elsif choice == "taunt lion" && lion_moved
			puts "The lion gets pissed off and chews your leg off."
		elsif choice == "open door" && lion_moved
			puts "Congrats! You can go to the Treasure Room."
			treasure_room
		end
	end
end



def treasure_room
	puts "Welcome to the Treasure Room. \nThis room is full of gold. \nDo you take gold?"

	puts ">>  "
	choice = $stdin.gets.chomp

	if choice == "yes"
		puts "How much?   "
		how_much = $stdin.gets.chomp.to_i
	elsif choice == "no"
		puts "You won! You can take as much gold as you want!"
		exit(0)
	else
		puts "I didn't understand what you said."
		treasure_room
	end

	if how_much >= 100
		die("You are too greedy. You lost. The End.")
	else
		puts "I will give you one more chance. You can start the game from the very beginning." #START
		start
	end
			
end



def die(why)
	puts why, "THE GAME IS OVER!"
	exit(0)
end



def start
	puts "You see 3 rooms."
	puts "Which room will you choose: \n\tright \n\tmiddle \n\tleft"

	puts ">> "
	choice = $stdin.gets.chomp

	if choice == "right"
		lion_room
	elsif choice == "left"
		riddle_room
	elsif choice == "middle"
		die("This room is empty. You lost!")
	else
		print "Concentrate and choose from right, middle or left."
		start
	end
			
end

start
