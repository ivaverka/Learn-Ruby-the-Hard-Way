require './dict.rb'

# create a mapping of region to abbreviation
regions = Dict.new()
Dict.set(regions, 'Минская', 'Мин')
Dict.set(regions, 'Гродненская', 'Гродн')
Dict.set(regions, 'Гомельская', 'Гом')

# create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'Мин', 'Минск')
Dict.set(cities, 'Гродн', 'Ивье')

# add some more cities
Dict.set(cities, 'Гом', 'Речица')


# puts out some cities
# my ASSERT

puts '-' * 20
Dict.assert(Dict.get(cities, 'Гом'), Dict.get(cities, 'Гродн')) #MY ASSERT CODE
puts "В Гомельской области есть город #{Dict.get(cities, 'Гом')}"
# Can I put assert in the sentence above?
# This one isn't working: puts "В Гомельской области есть город #{Dict.assert(Dict.get(cities, 'Гом'), Dict.get(cities, 'Гродн'))}"


# puts some regions
puts '-' * 30
puts "Сокращенная форма Гродненская области будет #{Dict.get(regions, 'Гродненская')}"

# do it by ising the region then cities dict
puts '-' * 20
puts "В Минской области есть город #{Dict.get(cities, Dict.get(regions, 'Минская'))}"

# puts every region abbreviation
puts '-' * 30
Dict.list(regions)

# puts every city in region
puts '-' * 20
Dict.list(cities)

puts '-' * 30
# be default ruby says "nil" when something isn't in there
region = Dict.get(regions, 'Illinois')

if !region
	puts "Sorry, no Illinois."
end

# default values using ||= with the nil result
city = Dict.get(cities, 'IL', 'Does Not Exist')
puts "The city for the state 'IL' is: #{city}"

# using DUMP function to list the contents of each bucket
puts '- * -' * 25
Dict.dump(regions)
Dict.dump(cities)









