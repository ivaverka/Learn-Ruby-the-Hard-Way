people = 50
cars = 40
trucks = 55


if cars > people || trucks < cars
	puts "We should take the cars."
elsif cars < people
	puts "We should not take cars."
else
	puts "We can't decide."
end

if !(trucks > cars && people > cars)
	puts "That's too many trucks."
elsif trucks < cars
	puts "Maybe we could take the trucks."
else
	puts "We still can't decide."
end

if not(people > trucks)
	puts "Alright, let's just take the trucks."
else
	puts "Fine, let's stay home then."
end
