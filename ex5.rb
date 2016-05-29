name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
centimeter = 0.4
kilogram = 2

puts "Let's talk about #{name}."
puts "He is #{height / centimeter} cm tall."
puts "He is #{weight / kilogram} kg heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# This line is tricky, try to get exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."