# We DEFine a function, give it a name (cheese_and_crackers), pass it the arguments
def cheese_and_crackers(cheese_count, boxes_of_crackers)
	# Prints the number of cheese_count (it will be given later when we call our function by typing its name and passing it some arguments)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	# Prints a message and adds a new line.
	puts "Get a blanket. \n"
	# We END the function
end


# Prints a message.
puts "We can just give the function numbers directly:"
# We call a functions and pass it some arguments.
# The output will have the messages that were defined in the function above.
cheese_and_crackers(20, 30)


puts "Or, we can use variables from our script:"
# We assign values to new variables
amount_of_cheese = 10
amount_of_crackers = 50

# We call the function and pass it the new variables that we have just created.
# The output will contain the messages from the function above.
cheese_and_crackers(amount_of_cheese, amount_of_crackers)


puts "We can even do math inside too:"
# We call our function and pass numbers to it.
# The output will be the messages from the function above with the new values.
cheese_and_crackers(10 + 20, 5 + 6)


puts "And we can combine the two, variables and math:"
# Here we combine our new variables with numbers.
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)