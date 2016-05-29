# This is my own function.
def apples_bananas(amount_of_apples, amount_of_bananas)
	puts "You should eat #{amount_of_apples} apples per day."
	puts "You should eat #{amount_of_bananas} bananas per day."
	puts "So, you eat #{amount_of_apples + amount_of_bananas} fruits every day. \n"
end

# 1
puts "\nWay 1. We pass numbers."
apples_bananas(2, 3)

# 2
puts "\nWay 2. We pass variables and get input from users."
puts "How many apples do you really eat?"
my_apples = gets.chomp.to_i

puts "How many bananas do you really eat?"
my_bananas = gets.chomp.to_i

puts "Based on your weight and age this is your nutrition plan: \n"
apples_bananas(my_apples, my_bananas)

# 3
puts "\nWay 3. We put variables and numbers"
apples_bananas(my_apples + 10, my_bananas + 20)
# 4
puts "\nWay 4. We do math."
apples_bananas(20 + 12, 40 - 10)

# 5
puts "\nWay 5. We use variables and numbers"
apples_bananas(my_apples + my_bananas, 100)

# 6
puts "\nWay 6. We use variables and do math"
apples_bananas(my_apples - my_bananas, my_apples + my_bananas)

# 7
