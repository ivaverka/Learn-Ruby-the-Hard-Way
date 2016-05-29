# This is a string. I want to know how many chickens I have.
puts "I will now count my chickens:"

# This line does the math and gives me total number of hens. #{} is used to do the math inside a string.
puts "Hens #{25.0 + 30.0 / 6.0}"
# See the line above for explanation.
puts "Roosters #{100.0 - 25.0 * 3.0 % 4.0}"

# I want to know how many eggs I have.
puts "Now I will count the eggs:"

# First we multiply or divide, then we add or subtract: 4 % 2 = 0, 1 / 4 = 0.
puts 3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2.0 - 1.0 / 4.0 + 6.0

# Prints this string to the screen.
puts "Is it true that 3 + 2 < 5 - 7?"

# Does the math and prints if the expression is true or false.
puts 3.0 + 2.0 < 5.0 - 7.0

# Prints a string and does the math inside of it and prints the result.
puts "What is 3 + 2? #{3.0 + 2.0}"
# Prints a string and does the math inside of it and prints the result.
puts "What is 5 - 7? #{5.0 - 7.0}"

# Prints this string.
puts "Oh, that's why it's false."

# Prints this string.
puts "How about some more."

# Prints a string and does the math inside of it and prints the result.
puts "Is it greater? #{5.0 > -2.0}"
# Prints a string and does the math inside of it and prints the result.
puts "Is it greater or equal? #{5.0 >= -2.0}"
# Prints a string and does the math inside of it and prints the result.
puts "is it less or equal? #{5.0 <= -2.0}"
