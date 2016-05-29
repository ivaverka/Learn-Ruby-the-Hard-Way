# How many types of people there are
types_of_people = 10
# This string uses the above string/variable
x = 'There are #{types_of_people} types of people.'
# String is assigned to the variable
binary = 'binary'
# String is assigned to the variable
do_not = "don't"
# String assigned to the variable
y = 'Those who know #{binary} and those who #{do_not}.'

# Prints "There are 10 types of people"
puts x
# Prints "Those who know binary and those who don't"
puts y

# Prints "I said: There are 10 types of people
puts 'I said: #{x}.'
puts "I also said: '#{y}'."

# False is assigned to the variable
hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = 'This is  the left side of ...'
a = 'a string with a right side.'

# Glues two variables / two phrases/strings
puts w + a