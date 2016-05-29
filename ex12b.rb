print "Hi. What is your name? "
name = gets.chomp

puts "Nice to meet you, #{name}."
puts "I would like to help you find out how much you need to save every month to retire at the desired age."
puts "Let's start."

print "What age do you want to retire? "
retire_age = gets.chomp.to_i

print "How old are you now? "
age = gets.chomp.to_i

puts "Cool."

print "How much money do you need per year? "
money = gets.chomp.to_i

average_lifespan = 90

puts "If you want to retire at #{retire_age} and have an annual income of #{money},
 \nyou will need to save #{(average_lifespan - retire_age) * money / (retire_age - age) / 12 } every month starting from now."
