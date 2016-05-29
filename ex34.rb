animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']

puts "1. The animal at 1 is ruby - #{animals[1]}"

puts "2. The third (3rd) animal is at 2: peacock - #{animals[2]}"

puts "3. The first (1st) animal is at 0: bear - #{animals[0]}"

puts "4. The animal at 3 is kangaroo - #{animals[3]}"

puts "5. The fifth (5th) animal is at 4: whale - #{animals[4]}"

puts "6. The animal at 2 is peacock - #{animals[2]}"

puts "7. The sixth (6th) animal is at 5: platypus - #{animals[5]}"

puts "8. The animal at 4 is whale - #{animals[4]}"


puts animals.first
puts animals.last

# Let's try to use Ruby to check my answers in a different way
# I took it from QA examples

def check_animals(ordinal)
	animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']

	if ordinal >= 1 && ordinal <= 6
		puts "The animal at ordinal #{ordinal} is a %s and is at cordinal value #{ordinal-1}" % animals[ordinal-1]
	else
		puts "Sorry, wrong value."
	end
end

check_animals(0)
check_animals(1)
check_animals(2)
check_animals(3)
check_animals(4)
check_animals(5)
check_animals(6)
check_animals(7)
check_animals(8)